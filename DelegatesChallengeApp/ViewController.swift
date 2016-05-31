//
//  ViewController.swift
//  DelegatesChallengeApp
//
//  Created by Vivin Raj on 28/05/16.
//  Copyright © 2016 Vivin Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipCode: UITextField!
    
    
    @IBOutlet weak var dollarField: UITextField!
    
    @IBOutlet weak var enableField: UITextField!
    
    @IBOutlet weak var editEnbaleSwitch: UISwitch!
    
    var zipCodeDel = zipCodeDelegate()
    var dollarFieldDel = dollarFieldDelegate()
    
    
   // let zipCode = zipCodeDelegate
   //ch let dollar = dollarDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.zipCode.delegate = self.zipCodeDel
        self.dollarField.delegate = self.dollarFieldDel
        //self.enableField.delegate = self
        
        
        self.editEnbaleSwitch.setOn(false, animated: false)
    }
    
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return self.editEnableSwitch.on
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    
    
    @IBAction func editEnableSwitch(sender: UISwitch) {
        if !(sender as! UISwitch).on {
            self.enableField.resignFirstResponder()
        
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

