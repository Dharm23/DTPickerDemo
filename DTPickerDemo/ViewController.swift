//
//  ViewController.swift
//  DTPickerDemo
//
//  Created by Apple Customer on 28/08/19.
//  Copyright © 2019 Apple Customer. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DTPickerProtocol {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //MARKS:- Actions
    @IBAction func actionOpenPicker(sender: UIButton){
        DTPicker.initPickerWithOpetions(values: ["A","B","C","D"],title: "Picker Title",message: "This is demo for picker from Dharmesh thakkar",delegate: self)
    }

    //MARKS:- DTPickerProtocol
    func didSelectOptions(results: String) {
        print(results)
    }
}

