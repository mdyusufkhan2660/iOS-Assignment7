//
//  ViewController.swift
//  iOS-Assignment6
//
//  Created by Yusuf Khan on 2022-12-07.
//

import UIKit

class Assignment6ViewController: UIViewController {
    var tapcount = 0
    @IBOutlet weak var tapLabel: UILabel!
    @IBOutlet var myView: UIView!
    
    @IBAction func didTapView(_ sender: UITapGestureRecognizer) {
        
        if sender.numberOfTapsRequired == 1 {
            print("Single Tap")
            tapcount+=1
            tapLabel.text = "Taps: " + String(tapcount)
        }
        else if(sender.numberOfTapsRequired == 2){
            tapcount = 0
            tapLabel.text = "Taps: " + String(tapcount)
            print("Double Tap")
            self.performSegue(withIdentifier: "showSecond", sender: self)
        }
    }
    @IBAction func longPress(_ sender: UILongPressGestureRecognizer) {
        if(sender.state.rawValue == 1){
            print("Long tap")
            tapcount = 0
            tapLabel.text = "Taps: " + String(tapcount)
            performSegue(withIdentifier: "showThird", sender: self)
        }
    }
    @IBAction func panGesture(_ sender: UIPanGestureRecognizer) {
        //Left swipe
        if(sender.state.rawValue == 1){
            print("Pan gesture")
            tapcount = 0
            tapLabel.text = "Taps: " + String(tapcount)
            performSegue(withIdentifier: "showForth", sender: self)
            
        }
        
    }
    override func viewDidLoad() {
        tapcount = 0
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTapView(_:)))
        tapGestureRecognizer.numberOfTapsRequired = 2
        myView.addGestureRecognizer(tapGestureRecognizer)
    }
}

