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
    
    // Disable image literals for now
    //let ballArray = [#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball5")]
    
    // Array of image objects, instead of literals; this looks cleaner
    let ballArray = [UIImage(named: "ball1"),UIImage(named: "ball2"),UIImage(named: "ball3"),UIImage(named: "ball4"),UIImage(named: "ball5")]
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        //print("Ask button pressed")
        
        // Get random value from array; use '!' to force non-optional image object
        ballPic.image = ballArray.randomElement()!
        
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

