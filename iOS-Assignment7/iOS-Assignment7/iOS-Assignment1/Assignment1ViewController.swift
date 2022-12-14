//
//  Assignment1ViewController.swift
//  iOS-Assignment7
//
//  Created by Yusuf Khan on 2022-12-14.
//

import UIKit

class Assignment1ViewController: UIViewController {

    @IBAction func myButton(_ sender: Any) {
        myLabel.text = "Changed!"
    }
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
