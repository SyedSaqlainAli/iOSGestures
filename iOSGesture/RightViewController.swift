//
//  RightViewController.swift
//  iOSGesture
//
//  Created by Saqlain-PC on 2/17/17.
//  Copyright © 2017 Saqlain-PC. All rights reserved.
//

import UIKit

class RightViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Right(_ sender: UISwipeGestureRecognizer) {
        print("right")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as UIViewController
        present(viewController, animated: false, completion: nil)
        
    }

    
    @IBAction func PanGesture(_ sender: UIPanGestureRecognizer) {
        
        //        get translation
        
        var translation = sender.translation(in: view)
        sender.setTranslation(CGPoint.zero, in: view)
        print(translation)
        
        
//        //create a new Label and give it the parameters of the old one
//        var label = sender.view as! UIImageView
//        label.center = CGPoint(x: label.center.x+translation.x, y: label.center.y+translation.y)
//        label.isMultipleTouchEnabled = true
//        label.isUserInteractionEnabled = true
        
        if sender.state == UIGestureRecognizerState.began {
            
            print("began")
            //add something you want to happen when the Label Panning has started
        }
        
        if sender.state == UIGestureRecognizerState.ended {
            
            //add something you want to happen when the Label Panning has ended
            print("end")
        }
        
        
        if sender.state == UIGestureRecognizerState.changed {
            
            //add something you want to happen when the Label Panning has been change ( during the moving/panning )
            
            
            let position = sender.location(in: self.view)
            print("Position in View: \(position)")
            
            if ((position.x <= self.imageView.frame.origin.x + self.imageView.frame.width) && (position.x >= self.imageView.frame.origin.x)) && ((position.y <= self.imageView.frame.origin.y + self.imageView.frame.height) && (position.y >= self.imageView.frame.origin.y)) {
                self.imageView.frame.origin = CGPoint(x: self.imageView.frame.origin.x + translation.x, y: self.imageView.frame.origin.y + translation.y)

            }
            
            
            
            
            
            
            
            
            
            
            
            
            print("changed")
        }
            
        else {
            
            // or something when its not moving
        }
        
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
