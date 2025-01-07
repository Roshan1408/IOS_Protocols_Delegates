//
//  ViewController.swift
//  protocol
//
//  Created by Roshan on 03/01/25.
//

import UIKit

class ViewController: UIViewController, Datapass {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToFormButton(_ sender: UIButton)  {
        performSegue(withIdentifier: "goToFormPage", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let secondVC=segue.destination as! SecondViewController
        secondVC.delegate=self
    }
   
    func dataPass(name: String, age: String, city: String) {
        lblName.text=name
        lblAge.text=age
        lblCity.text=city
    }
}

