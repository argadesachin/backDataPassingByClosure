//
//  SecondViewController.swift
//  backDataPassingByClosure
//
//  Created by Mac on 01/12/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
   
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var courseNameTextField: UITextField!
    
    var dataOnSecondViewController : ((String,String,String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "SecondVc"
       
    }
    
    @IBAction func btnPassDataToFirstVc(_ sender: Any) {
        
        let firstName = self.firstNameTextField.text
        let lastName = self.lastNameTextField.text
        let courseName = self.courseNameTextField.text
        
        guard let dataFromSvc = dataOnSecondViewController else {
            print("data not found")
            return
            
        }
        
        dataFromSvc(firstName ?? "Abc",lastName ?? "XYZ",courseName ?? "IOS")
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
