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
        // Without the '!', i get this error: Cannot assign value of type 'UIImage??' to type 'UIImage?'
        // This error has '??' because the returned object from randomElement could be any object type, plus
        // the array objects are already "optionals" UIImage? type, so it's a double ??, which is unrelated to
        // swift's coalesce operator
        ballPic.image = ballArray.randomElement()!
        
        // This would be another way to do it, and would prevent the above type errors
        //ballPic.image = ballArray[Int.random(in: 0...4)]
        
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

