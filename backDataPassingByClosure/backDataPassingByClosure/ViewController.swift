//
//  ViewController.swift
//  backDataPassingByClosure
//
//  Created by Mac on 01/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var courseName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "FirstVc"
    }

    @IBAction func clickbtnOnFvc(_ sender: Any) {
        var secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondViewController.dataOnSecondViewController = {(firstName,lastName,courseName) in
            
            self.firstNameLabel.text = firstName
            self.lastNameLabel.text = lastName
            self.courseName.text = courseName
        }
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
}

