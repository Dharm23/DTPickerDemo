# DTPickerDemo

# How to user
Setp 1: Just drag and drop DTPicker.swift into you project 
Setp 2: inherit DTPickerProtocol 
**look like: class ViewController: UIViewController,DTPickerProtocol **

# To open Picker
You can open it by calling static method **initPickerWithOpetions**
**Lookg Like: DTPicker.initPickerWithOpetions(values: ["A","B","C","D"],title: "Picker Title",message: "This is demo for picker from Dharmesh thakkar",delegate: self)**

# implement delegates
 //MARKS:- DTPickerProtocol
    func didSelectOptions(results: String) {
        print(results)
    }
