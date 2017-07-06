//
//  SecondViewController.swift
//  onthego
//
//  Created by Raxesh Patel on 5/27/17.
//  Copyright © 2017 raxesh. All rights reserved.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController {
    
    @IBOutlet weak var boston_common: UIImageView!
    @IBOutlet weak var clicked: UIButton!
    @IBOutlet weak var textData: UITextView!
    
    @IBOutlet weak var explore: UIButton!
    @IBOutlet weak var fenuihall: UIImageView!
    let synth = AVSpeechSynthesizer()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if checkfenui == 0 {
        self.fenuihall.isHidden = true
        let myUtterance = AVSpeechUtterance(string:"Hello, Lets explore boston")
        
        let utterance2 = AVSpeechUtterance(string:"You have reached Faneuil hall. In 1742 Peter Faneuil, Boston's wealthiest merchant, built Faneuil Hall as a gift to the city.")
        myUtterance.volume = 1
        synth.speak(myUtterance)
        
        let timenew = DispatchTime.now() + 5 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: timenew) {
            // Your code with delay
            utterance2.volume = 1
            self.synth.speak(utterance2)
            self.fenuihall.isHidden = false
            self.explore.isHidden = false
            }
            
        }
        
        
        if checkfenui == 1 {
            self.fenuihall.isHidden = true
            self.explore.isHidden = true
            let timenew2 = DispatchTime.now() + 5 // change 2 to desired number of seconds
            DispatchQueue.main.asyncAfter(deadline: timenew2) {
                // Your code with delay
                let utterance3 = AVSpeechUtterance(string:"You have reached Boston Common. The Common is part of the Emerald Necklace of parks and parkways that extend from the Common south to Franklin Park in Jamaica Plain, Roxbury, and Dorchester. A visitors center for all of Boston is located on the Tremont Street side of the park.")
                utterance3.volume = 1
                self.synth.speak(utterance3)
                self.boston_common.isHidden = false
            }
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onclick(_ sender: UIButton) {
        //let myUtterance = AVSpeechUtterance(string:textData.text)
        //myUtterance.volume = 1
        //synth.speak(myUtterance)
    }

    @IBAction func onexploremore(_ sender: UIButton) {
        checkfenui = 1
        performSegue(withIdentifier:"info", sender: self)
    }

}
