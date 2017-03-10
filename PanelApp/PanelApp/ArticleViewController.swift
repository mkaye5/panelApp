//
//  ArticleViewController.swift
//  PanelApp
//
//  Created by Megan Kaye on 3/10/17.
//  Copyright © 2017 Megan Kaye. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {
    
    //outlets
    @IBOutlet weak var titleOutlet: UILabel!
    
    //norm var
    var articleTitle : String!
    var article : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        titleOutlet.text = articleTitle
        // Do any additional setup after loading the view.
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
