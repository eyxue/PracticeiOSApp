//
//  ViewController.swift
//  HackMITTestApp
//
//  Created by Elise Xue on 9/17/15.
//  Copyright © 2015 Elise Xue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var resolution : Int = 50
    
    @IBAction func buttonPressed(sender: AnyObject) {
        imageView.backgroundColor = UIColor.redColor()
        
        var urlString = "http://lorempixel.com/\(resolution)/\(resolution)/animals/"
        
        let request = NSURLRequest(URL:NSURL(string:urlString)!)
        
        let response: AutoreleasingUnsafeMutablePointer<NSURLResponse?>=nil
        
        let data = try! NSURLConnection.sendSynchronousRequest(request, returningResponse:response)
        
        
        let image = UIImage(data:data)
        
        imageView.image = image
    }
    
    @IBAction func sliderChanged(sender: UISlider) {
        print(sender.value)
        resolution = Int(sender.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

