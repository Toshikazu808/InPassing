//
//  ControllerB.swift
//  InPassing
//
//  Created by Ryan Kanno on 6/30/21.
//

import UIKit

protocol ControllerBDelegate {
   func updateLabel(text: String)
}

class ControllerB: UIViewController {
   var delegate: ControllerBDelegate?
   @IBOutlet weak var passedLabel: UILabel!
   @IBOutlet weak var textfield: UITextField!
   @IBOutlet weak var btn: UIButton!
   var txt = "This label receives data passed from Controller A"
   
   override func viewDidLoad() {
      super.viewDidLoad()
      passedLabel.text = txt
   }
   
   @IBAction func passDataBack(_ sender: UIButton) {
      delegate?.updateLabel(text: textfield.text!)
      self.navigationController?.popViewController(animated: true)
   }
   
}
