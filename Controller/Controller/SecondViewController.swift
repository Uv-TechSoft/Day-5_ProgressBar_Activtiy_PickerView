//
//  SecondViewController.swift
//  Controller
//
//  Created by Yogesh Patel on 14/10/21.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    var arrData = [
        ["Yogesh","Uvesh","Mihir","Pratik"],
        ["23","24","25","26"],
        ["Ahmedabad", "USA"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        print(arrData.count)
    }
    
    
    //Picker DataSourceMethod
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        arrData.count //Column 2 - --- 0,1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        arrData[component].count//(4)//Row  0,1,2,3
    }
    
    //Picker Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //componet - 0
        //row - 0,1,2,3
        arrData[component][row] //arrData[0][1]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Componet", component)
        print("Row", row)
        print(arrData[component][row])
    }
    
}
