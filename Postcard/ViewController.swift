//
//  ViewController.swift
//  Postcard
//
//  Created by Tyler Mendenhall on 1/15/15.
//  Copyright (c) 2015 Mendenhall Mechanical Services Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
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
        sender.backgroundColor = UIColor.redColor()
        
        
        messageLabel.textColor = UIColor.redColor()
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false
        
        enterNameTextField.text = ""
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

