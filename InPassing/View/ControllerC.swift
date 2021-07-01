//
//  ControllerC.swift
//  InPassing
//
//  Created by Ryan Kanno on 7/1/21.
//

import UIKit

protocol ControllerCDelegate {
   func fromControllerC(text: String)
}

class ControllerC: UIViewController {
   var delegate: ControllerCDelegate?
   @IBOutlet weak var passedLabel: UILabel!
   @IBOutlet weak var textfield: UITextField!
   var txt = "Update from ControllerA"
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      self.navigationController?.title = "ControllerC"
      passedLabel.text = txt
   }
   
   @IBAction func backPass(_ sender: UIButton) {
      delegate?.fromControllerC(text: textfield.text!)
      self.navigationController?.popViewController(animated: true)
   }
}
