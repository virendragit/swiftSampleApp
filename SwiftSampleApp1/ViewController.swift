//
//  ViewController.swift
//  SwiftSampleApp1
//
//  Created by Virendra on 7/16/15.


import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var userNameTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
   
    @IBOutlet weak var infoLabel: UILabel!
    
    
    @IBAction func logInButtonAction(sender: AnyObject) {
        
        var username = "virendra"
        var password = "password"
        
        if userNameTextField.text == username &&
            passwordTextField.text == password{
        infoLabel.text = "Pass word is correct"
        infoLabel.textColor = UIColor.blueColor()
                
        userNameTextField.resignFirstResponder();
        passwordTextField.resignFirstResponder();
                
            
        }
        
        else{
        infoLabel.text = "Pass word is incorrect"
        infoLabel.textColor = UIColor.redColor()
            
            userNameTextField.resignFirstResponder();
            passwordTextField.resignFirstResponder();
        }
       
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        passwordTextField.secureTextEntry  = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

