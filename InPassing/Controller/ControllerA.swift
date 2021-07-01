//
//  ViewController.swift
//  InPassing
//
//  Created by Ryan Kanno on 6/30/21.
//

import UIKit

class ControllerA: UIViewController {
   @IBOutlet weak var passedLabel: UILabel!
   @IBOutlet weak var textfield: UITextField!
   @IBOutlet weak var vcCLabel: UILabel!
   
   override func viewDidLoad() {
      super.viewDidLoad()
//      vcB.delegate = self
   }
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if segue.destination is ControllerB {
         let vc = segue.destination as? ControllerB
         vc?.txt = self.textfield.text!
      }
      if let destination = segue.destination as? ControllerB {
         destination.delegate = self
      }
   }

   @IBAction func passDataForward(_ sender: UIButton) {
      // Storyboard segue to ControllerB
   }
   
   @IBAction func forwardPassViaXib(_ sender: UIButton) {
      let vc = ControllerC(nibName: "ControllerC", bundle: nil)
      vc.txt = textfield.text!
      self.navigationController?.pushViewController(vc, animated: true)
   }
   
}

extension ControllerA: ControllerBDelegate {
   func updateLabel(text: String) {
      passedLabel.text = text
   }
}

extension ControllerA: ControllerCDelegate {
   func fromControllerC(text: String) {
      vcCLabel.text = text
   }
}
