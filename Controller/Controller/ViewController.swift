//
//  ViewController.swift
//  Controller
//
//  Created by Yogesh Patel on 12/10/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var btnSegment: UISegmentedControl!
    @IBOutlet weak var img: UIImageView!
   
    @IBOutlet weak var fnameTextField: UITextField!
    @IBOutlet weak var lnameTextField: UITextField!
   
    @IBOutlet weak var btnSlider: UISlider!
    @IBOutlet weak var btnStepper: UIStepper!
    @IBOutlet weak var btnSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fnameTextField.delegate = self
        lnameTextField.delegate = self
        print(#function)
        btnSlider.value = 5
        btnStepper.minimumValue = 0
        btnStepper.maximumValue = 20
        btnStepper.stepValue = 5
        btnStepper.value = 5
        
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        /*
        fnameTextField.addTarget(self, action: #selector(textfieldValueChanged), for: .editingChanged)
        lnameTextField.addTarget(self, action: #selector(textfieldValueChanged), for: .editingChanged)
        */
    }

    /*
    @objc
    func textfieldValueChanged(){
//        print(fnameTextField.text ?? "", lnameTextField.text ?? "")
        if let fname = fnameTextField.text, !fname.isEmpty ,let lname = lnameTextField.text, !lname.isEmpty{
            
            if let fnameValue = Int(fname), let lnameValue = Int(lname){
                print(fnameValue + lnameValue)
            }
            
        }
    }
    */
    
    @IBAction func textfieldValueChanged(_ sender: UITextField) {
        if let fname = fnameTextField.text, !fname.isEmpty ,let lname = lnameTextField.text, !lname.isEmpty{
            
            if let fnameValue = Int(fname), let lnameValue = Int(lname){
                print(fnameValue + lnameValue)
            }
            
        }
    }
    
    
    
    
    
    
    @IBAction func btnSwitchTapped(_ sender: UISwitch) {
//        if (sender as? UISwitch)!.isOn{
        if sender.isOn{
            self.view.backgroundColor = .brown
        }else{
            self.view.backgroundColor = .white
        }
    }
    
    @IBAction func btnStepperTapped(_ sender: UIStepper) {
        print(Int(sender.value))
    }
    
    @IBAction func btnSliderTapped(_ sender: UISlider) {
        print(Int(btnSlider.value))
    }
    
    @IBAction func btnSaveTapped(_ sender: UIButton) {
      //  print(btnSlider.value)
      //  print(btnSwitch.isOn)
//        fnameTextField.resignFirstResponder()
//        lnameTextField.resignFirstResponder()
        
        if activityIndicator.isAnimating{
            activityIndicator.stopAnimating()
//            activityIndicator.isHidden = true
        }else{
            activityIndicator.startAnimating()
//            activityIndicator.isHidden = false
        }
        let value = Float.random(in: 0...1)
        print(value)
        progressView.setProgress(value, animated: true)
        
        let v1 = Int(fnameTextField.text ?? "") ?? 0
        let v2 = Int(lnameTextField.text ?? "") ?? 0
        print(v1)
        print(v2)
        print(v1 + v2)
        self.view.endEditing(true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
    }
    
    @IBAction func btnSegmentTapped(_ sender: UISegmentedControl) {
        //Switch case ma convert kri dejo
        if sender.selectedSegmentIndex == 0{
            img.image = UIImage(named: "cute1")
        }else if sender.selectedSegmentIndex == 1{
            img.image = UIImage(named: "cute2")
        }else{
            img.image = UIImage(named: "cute3")
        }
    }
    
}

/*
 Textfield
 textfield value change thay aem print thavu joie (textfield.text)
 
 FirstNameTextfield - 1
 LastNameTextfield - 1
 
 print(2) // Addition
 
 check empty condition - Banne jode textfield ma value hase to j addition thase.
 */

/*
 SOLUTIONS
 1. ADD TARGET
 2. ACTION
 */

/*
 Task 2 - Convert Segment if else to switch case.
 */
