//
//  ViewController.swift
//  Magic Eight Ball
//
//  Created by Brian Jones on 1/24/20.
//  Copyright © 2020 Brian Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        print("Ask button pressed")
    }
    
}

