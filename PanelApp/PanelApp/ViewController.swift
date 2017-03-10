//
//  ViewController.swift
//  PanelApp
//
//  Created by Megan Kaye on 3/5/17.
//  Copyright © 2017 Megan Kaye. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //outlets
    @IBOutlet weak var articleTableView: UITableView!
    var itemToPass : String!
    
    //variables
    var list = ["yes", "no", "please"]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    //establishes table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = articleTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    
    //if someone clicks
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        itemToPass = list[indexPath.row]
        performSegue(withIdentifier: "articleSegue", sender: nil)
    }
    
    
    //if the tableview loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        articleTableView.dataSource = self
        articleTableView.delegate = self
    }
    
    
    
    
    //preparing for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "articleSegue" {
            let segueDest = segue.destination as! ArticleViewController
            segueDest.articleTitle = itemToPass
        }
    }
}

