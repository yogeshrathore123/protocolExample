//
//  FirstViewController.swift
//

//
//  Created by Yogesh Rathore on 30/10/17.
//  Copyright © 2017 Sybrant Technologies. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, getLastNameProtocol {

    @IBOutlet weak var firstNmaeTxtField: UITextField!
    @IBOutlet weak var getLastNameBtn: UIButton!
    @IBOutlet weak var fullNameShowLbl: UILabel!
    
    func lastName(lastname: String) {
        fullNameShowLbl.text = firstNmaeTxtField.text! + " " + lastname
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func getLastNameBtnAction(_ sender: Any) {
        
        if let nextViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewControllerID") as? SecondViewController {
            nextViewController.firstNameStr = firstNmaeTxtField.text!
            nextViewController.getLastNameProtocolDelegate = self
            self.navigationController?.pushViewController(nextViewController, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
