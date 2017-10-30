//
//  SecondViewController.swift
//  ProtocolBasedExample
//
//  Created by Yogesh Rathore on 30/10/17.
//  Copyright © 2017 Sybrant Technologies. All rights reserved.
//

import UIKit

protocol getLastNameProtocol {
    func lastName(lastname: String)
}
class SecondViewController: UIViewController {

    @IBOutlet weak var LastNameTxtField: UITextField!
    @IBOutlet weak var fullNameaBtn: UIButton!
    @IBOutlet weak var showFirstNameLbl: UILabel!
    var firstNameStr = String()
    var getLastNameProtocolDelegate: getLastNameProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showFirstNameLbl.text = firstNameStr
    }

    @IBAction func fullNameaBtnAction(_ sender: Any) {
        self.getLastNameProtocolDelegate?.lastName(lastname: LastNameTxtField.text!)
        self.navigationController?.popViewController(animated: true)
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
