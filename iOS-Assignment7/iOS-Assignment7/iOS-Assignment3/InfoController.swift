//
//  InfoController.swift
//  Assignment3
//
//  Created by Yusuf Khan on 2022-11-22.
//

import UIKit

class InfoController: UIViewController {

    @IBOutlet weak var dob: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var postalCode: UILabel!
    @IBOutlet weak var province: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var streetName: UILabel!
    @IBOutlet weak var streetNumber: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var firstName: UILabel!
    
    var first_name = "",
        last_name="",
        street_number="",
        street_name="",
        var_city="",
        var_province="",
        postal_code="",
        var_email="",
        var_dob=""
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Info View Screen"
        
        firstName.text = first_name
        lastName.text = last_name
        streetNumber.text = street_number
        streetName.text = street_name
        city.text = var_city
        province.text = var_province
        postalCode.text = postal_code
        email.text = var_email
        dob.text = var_dob

        // Do any additional setup after loading the view.
    }

}
