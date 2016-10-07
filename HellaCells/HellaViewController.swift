//
//  ViewController.swift
//  HellaCells
//
//  Created by Flatiron School on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UITableViewController {
    
    var intArray: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for each in 1...100 {
            intArray.append(each)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //determine number of sections in tableView
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //determine number of Rows in Section, return the number of items in the item list
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return intArray.count
    }
    
    //determine the cell text at a given index path and row using a prototype cell identifier
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HellaCell", for: indexPath)
        cell.textLabel?.text = String(intArray[indexPath.row])
        return cell
    }
    
    
    
    //prepare for the segue, by pointing to the right segue identifier, then cast the segue.destination as the viewController class you'll be using for the View.  Then set the destination variable value to the list contents at the selected indexPath.row.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "HellaDetailView" { return }
        if let dest = segue.destination as? DetailViewController, let indexPath = tableView.indexPathForSelectedRow {
            dest.detail = intArray[indexPath.row]
        }
    }

}

