//
//  ViewController.swift
//  Shopping List
//
//  Created by Andrew Nowak on 3/30/21.
//  Copyright © 2021 Andrew Nowak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
// MARK: - Outlets, Variables, Constants, etc.
   
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBOutlet weak var itemTextField: UITextField!
    
    var items: [String] = []
    
// MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        items.append("Bacon")
        items.append("Eggs")
        items.append("Milk")
    }
// MARK: - Functions, Actions, etc.
    
    @IBAction func whenBarButtonPressed(_ sender: UIBarButtonItem) {
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }





}

