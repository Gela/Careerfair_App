//
//  SecondViewController.swift
//  MnT
//
//  Created by Aishani Bhalla on 3/1/15.
//  Copyright (c) 2015 M&TBank. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var major: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var date: UITextField!
    @IBOutlet weak var interests: UITextField!
    
    var firstNameArray = [String]();
    var lastNameArray = [String]();
    var majorArray = [String]();
    var phoneNumberArray = [Int]();
    var emailArray = [String]();
    var dateArray = [String]();
    var interestArray = [String]();
    
    var entryArray:NSMutableArray! = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func submitAction(sender: AnyObject) {
     
        entryArray.addObject(firstName.text);
        entryArray.addObject(lastName.text);
        entryArray.addObject(major.text);
        entryArray.addObject(phoneNumber.text);
        entryArray.addObject(email.text);
        entryArray.addObject(date.text);
        entryArray.addObject(interests.text);
        println(entryArray);
     
        firstName.text = nil;
        lastName.text = nil;
        major.text = nil;
        phoneNumber.text = nil;
        email.text = nil;
        date.text = nil;
        interests.text = nil;
        
        
        
    }

    @IBAction func previewAction(sender: AnyObject) {
        for element in entryArray {
            println(element);
        }
    }

}


