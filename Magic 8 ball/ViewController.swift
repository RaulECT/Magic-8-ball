//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Raul  Canul on 15/08/18.
//  Copyright © 2018 Raul  Canul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [ "ball1", "ball2", "ball3", "ball4", "ball5" ]
    var randomBallNumber: Int = 0
    
    //MARK: UI Elements
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateBallImages() {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImages()
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        updateBallImages()
    }
    

}

