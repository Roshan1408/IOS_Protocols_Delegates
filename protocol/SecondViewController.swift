//
//  SecondViewController.swift
//  protocol
//
//  Created by Roshan on 03/01/25.
//

import UIKit

protocol Datapass {
    func dataPass(name: String, age: String, city: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    var delegate: Datapass!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func saveButton(_ sender: UIButton)
    {
        
            delegate.dataPass(name: txtName.text!, age: txtAge.text!, city: txtCity.text!)
        self.dismiss(animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
