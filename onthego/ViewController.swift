//
//  ViewController.swift
//  onthego
//
//  Created by Raxesh Patel on 5/27/17.
//  Copyright © 2017 raxesh. All rights reserved.
//

import UIKit

var checkfenui = 0

class ViewController: UIViewController {

    @IBOutlet weak var exploreNow: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func exploreClicked(_ sender: UIButton) {
        performSegue(withIdentifier:"started", sender: self)
    }


}

