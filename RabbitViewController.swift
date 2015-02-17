//
//  RabbitViewController.swift
//  Rabbit
//
//  Created by Maya Venkatraman on 2/16/15.
//  Copyright (c) 2015 Maya Venkatraman. All rights reserved.
//

import UIKit

class RabbitViewController: UIViewController {
    
    @IBOutlet weak var bunnyView: UIImageView!
    var scale: CGFloat! = 1
    var rotation: CGFloat! = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func didPressUpButton(sender: AnyObject) {
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.bunnyView.center.y = self.bunnyView.center.y - 20
        })
        
        
        
    }
    
    
    @IBAction func didPressDownButton(sender: AnyObject) {
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.bunnyView.center.y = self.bunnyView.center.y + 20
        })
        
        
    }
    
    
    @IBAction func didPressRightButton(sender: AnyObject) {
       
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.bunnyView.center.x = self.bunnyView.center.x + 20
        })
        
       
    }
    
    @IBAction func didPressLeftButton(sender: AnyObject) {
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.bunnyView.center.x = self.bunnyView.center.x - 20
        })
        
        
    }
    
    
    
    @IBAction func didPressHideButton(sender: AnyObject) {
        UIView.animateWithDuration(0.9, animations: { () -> Void in
             self.bunnyView.alpha = 0
            self.bunnyView.transform = CGAffineTransformMakeScale(0.1, 0.1)
        })
       
    }
    
    
    
    @IBAction func didPressShowButton(sender: AnyObject) {
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.bunnyView.alpha = 1
            self.bunnyView.transform = CGAffineTransformMakeScale(1, 1)
        })
    
    }
    
    @IBAction func onLeafButton(sender: AnyObject) {
        
       
        if scale < 5 {
            scale = scale + 0.2
           
        }
         println("scale is : \(scale)")
        
        var scaleTransform = CGAffineTransformMakeScale(scale, scale)
        var rotationTransform = CGAffineTransformMakeDegreeRotation(rotation)
        var transform = CGAffineTransformConcat(scaleTransform, rotationTransform)
        
    
        self.bunnyView.transform = transform
    }
    
    
    
    
    @IBAction func onResetButton(sender: AnyObject) {
        
        self.bunnyView.transform = CGAffineTransformMakeScale(1, 1)
    }
    
   
    
    @IBAction func didPressRotateRightButton(sender: AnyObject) {
    rotation = rotation + 10
        
        var scaleTransform = CGAffineTransformMakeScale(scale, scale)
        var rotationTransform = CGAffineTransformMakeDegreeRotation(rotation)
        var transform = CGAffineTransformConcat(scaleTransform, rotationTransform)
        
        
        self.bunnyView.transform = transform
    }
    
    @IBAction func didPressRotateLeftButton(sender: AnyObject) {
    
        var scaleTransform = CGAffineTransformMakeScale(scale, scale)
        var rotationTransform = CGAffineTransformMakeDegreeRotation(rotation)
        var transform = CGAffineTransformConcat(scaleTransform, rotationTransform)
        
        
        self.bunnyView.transform = transform
    }
    
    
    
}
