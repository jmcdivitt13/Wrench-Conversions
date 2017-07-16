//
//  ViewController.swift
//  Conversions
//
//  Created by Jeff McDivitt on 5/31/17.
//  Copyright © 2017 Jeff McDivitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var metricLabel: UILabel!
    
    @IBOutlet weak var selctedBoltTxtFld: UITextField!
    
    var standardBolt = ["5/16\"","3/8\"","7/16\"","1/2\"","9/16\"","5/8\"","3/4\"","13/16\"","7/8\"","15/16\"",        "1 inch","1-1/8\"","1-1/4\"","1-5/16\"","1-3/8\"","1-1/2\"","1-5/8\"","1-11/16\"","1-3/4\"","1-7/8\"","2 inch","2-1/4\"","2-1/2\"","2-5/8\"","2-3/4\"","2-15/16\"","3 inch","3-1/8\"","3-1/4\"","3-1/2\"","3-3/4\"","3-7/8\"","4 inch","4-1/4\"","4-1/2\"","4-5/8\"","5 inch","5-3/8\"","5-1/2\"","5-3/4\"","6 inch","6-1/2\"","7 inch"]
    
    var metricBolt = ["8mm","10mm","11mm","13mm","14mm","16mm","19mm","21mm","22mm","24mm","25mm","29mm","32mm","34mm","35mm","38mm","41mm","43mm","45mm","48mm","51mm","57mm","64mm","67mm","70mm","75mm","76mm","80mm","83mm","89mm","95mm","99mm","102mm","108mm","114mm","118mm","127mm","137mm","140mm","146mm","152mm","165mm","178mm"]
    
    var selectedBolt: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createBoltPicker()
        createToolBar()
        
        
    }
    
    
    func createBoltPicker(){
        
        let boltPicker = UIPickerView()
        boltPicker.delegate = self
        
        selctedBoltTxtFld.inputView = boltPicker
        
        //Cusomization
        
        boltPicker.backgroundColor = .white
    }
    
    
    func createToolBar(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ViewController.dismissKeyboard))
        
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        selctedBoltTxtFld.inputAccessoryView = toolBar
        
        
    }
    
    
    func dismissKeyboard(){
        view.endEditing(true)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return standardBolt.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return standardBolt[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selectedBolt = standardBolt[row]
        metricLabel.text = metricBolt[row]
        selctedBoltTxtFld.text = selectedBolt
        
    }
    
    
    
    
    
}









