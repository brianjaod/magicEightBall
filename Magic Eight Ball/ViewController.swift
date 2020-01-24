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
    
    let ballArray = [#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball5")]
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        print("Ask button pressed")
        ballPic.image = ballArray.randomElement()        
        // default back to ? pic after delay
        delayWithSeconds(3){
            self.ballPic.image = #imageLiteral(resourceName: "ball0")
        }
        
    }
    
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
}

