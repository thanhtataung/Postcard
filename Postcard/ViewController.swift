//
//  ViewController.swift
//  Postcard
//
//  Created by Than Htat Aung on 15/6/15.
//  Copyright (c) 2015 Than Htat Aung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Code will evaluate 
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder() //To hide the keyboard
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

