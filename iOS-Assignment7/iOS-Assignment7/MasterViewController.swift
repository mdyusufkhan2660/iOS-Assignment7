//
//  MasterViewController.swift
//  iOS-Assignment7
//
//  Created by Yusuf Khan on 2022-12-14.
//

import UIKit

class MasterViewController: UITableViewController {
    @IBOutlet var assignmentTable: UITableView!
    
    var assignments = ["Assignment 1","Assignment 2", "Assignment 3", "Assignment 4", "Assignment 5", "Assignment 6"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        assignmentTable.dataSource = self
        assignmentTable.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assignments.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = assignments[indexPath.row]
        return cell
    }
}

extension MasterViewController: UIApplicationDelegate{
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selected = assignments[indexPath.row]
        switch selected {
        case "Assignment 1":
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "Assignment1ViewController") as! Assignment1ViewController
            splitViewController?.showDetailViewController(vc, sender: self)
        case "Assignment 2":
            print("Assignment 2")
        case "Assignment 3":
            print("Assignment 3")
        case "Assignment 4":
            print("Assignment 4")
        case "Assignment 5":
            print("Assignment 5")
        case "Assignment 6":
            print("Assignment 6")
        default:
            print("Not recognized!")
        }
        
    }
    
}

