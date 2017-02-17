//
//  ViewController.swift
//  iOSGesture
//
//  Created by Saqlain-PC on 2/17/17.
//  Copyright © 2017 Saqlain-PC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMain: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    @IBAction func left(_ sender: UISwipeGestureRecognizer) {
        
        print("left")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "RightViewController") as UIViewController
        present(viewController, animated: false, completion: nil)
        
        
    }
    
    @IBAction func right(_ sender: UISwipeGestureRecognizer) {
        
        print("right")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "LeftViewController") as UIViewController
        present(viewController, animated: false, completion: nil)
        
    }
    
    @IBAction func up(_ sender: UISwipeGestureRecognizer) {
        
        
        print("up")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "DownViewController") as UIViewController
        present(viewController, animated: false, completion: nil)
    }
    
    @IBAction func down(_ sender: UISwipeGestureRecognizer) {
        
        print("down")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "UpViewController") as UIViewController
        present(viewController, animated: false, completion: nil)
        
    }
    
    
    
    
    
    
}

