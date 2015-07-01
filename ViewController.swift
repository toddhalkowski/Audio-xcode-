//
//  ViewController.swift
//  Audio
//
//  Created by todd d Halkowski on 6/30/15.
//  Copyright (c) 2015 Geneva. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer = AVAudioPlayer()
    

    @IBAction func Play(sender: AnyObject) {
        
        var audioPath = NSBundle.mainBundle().pathForResource("r_allemande", ofType: "mp3")!
        
            var error : NSError? = nil
        
        player = AVAudioPlayer(contentsOfURL:NSURL(string: audioPath), error: &error)
        
        if error == nil {
            
            player.play()
            
        } else {
            
            println(error)
            
            
        }
        
        
        
    }
    
    
    
    @IBAction func Pause(sender: AnyObject) {
        
        
        player.pause()
        
        
    }
    
    
    @IBAction func sliderChanged(sender: AnyObject) {
        
        player.volume = sliderValue.value 
        
        
        
    }
    
    @IBOutlet weak var sliderValue: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

