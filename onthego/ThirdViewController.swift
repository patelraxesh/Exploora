//
//  ThirdViewController.swift
//  onthego
//
//  Created by Raxesh Patel on 5/27/17.
//  Copyright © 2017 raxesh. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var beackbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backclicked(_ sender: UIButton) {
        performSegue(withIdentifier:"back1", sender: self)
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
