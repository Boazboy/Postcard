//
//  ViewController.swift
//  Postcard
//
//  Created by Lawrence Covington on 3/23/15.
//  Copyright (c) 2015 Lawrence Covington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MassageLabel: UILabel!
    @IBOutlet weak var EnterNameTextFeild: UITextField!
    @IBOutlet weak var EnterMessageTextField: UITextField!
    
    @IBOutlet weak var NameLabel: UILabel!
    
    
    @IBOutlet weak var MailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SendMailButtonPressed(sender: UIButton) {
        MassageLabel.hidden = false
        NameLabel.hidden = false
        MassageLabel.text = EnterMessageTextField.text
        NameLabel.text = EnterNameTextFeild.text
        MassageLabel.textColor = UIColor.redColor()
        NameLabel.textColor = UIColor.blueColor()
        EnterMessageTextField.text = ""
        EnterNameTextFeild.text = ""
        EnterMessageTextField.resignFirstResponder()
        EnterNameTextFeild.resignFirstResponder()
        
        MailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    
    
    }

}

