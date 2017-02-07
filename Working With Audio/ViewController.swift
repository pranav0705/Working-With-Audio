//
//  ViewController.swift
//  Working With Audio
//
//  Created by Pranav Bhandari on 2/7/17.
//  Copyright © 2017 Pranav Bhandari. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    var player : AVAudioPlayer = AVAudioPlayer()

    @IBAction func play(sender: AnyObject) {
        
       player.play()  
        
    }
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
    }
    @IBAction func volume(sender: AnyObject) {
        
        player.volume = slider.value
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = NSBundle.mainBundle().pathForResource("omgflute", ofType: "mp3")!
        
        do{
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            
        } catch {
            //process error here
        }

        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

