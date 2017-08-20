//
//  ViewController.swift
//  testnode
//
//  Created by Mohit on 20/08/17.
//  Copyright © 2017 ahujamoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var myTextField: UITextField!
    @IBOutlet var myView: UIView!
    var _y = 0.0
    var colorSwitch=true
    // UITextField Delegates
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("TextField did begin editing method called")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("TextField did end editing method called;:::\(textField.text!)")
        var txtField: UITextField = UITextField(frame: CGRect(x: 0, y: _y, width: 500.00, height: 30.00));
//        _y = _y + 30.00;
        txtField.borderStyle = UITextBorderStyle.line
        txtField.text = textField.text //"myString"
        if(colorSwitch){
            txtField.backgroundColor = UIColor.blue
        }
        else {
            txtField.backgroundColor = UIColor.yellow
        }
        colorSwitch = !colorSwitch
        self.view.addSubview(txtField)
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("TextField should begin editing method called")
        return true;
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("TextField should clear method called")
        return true;
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("TextField should end editing method called")
        return true;
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("While entering the characters this method gets called")
        return true;
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextField should return method called")
        textField.resignFirstResponder();
        return true;
    }
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextField.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

