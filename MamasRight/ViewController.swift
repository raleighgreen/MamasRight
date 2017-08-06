//
//  ViewController.swift
//  MamasRight
//
//  Created by Raleigh Green on 8/4/17.
//  Copyright © 2017 Raleigh Green. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "MamasRight", ofType: "m4a")!))
            playSound()
        }
        catch {
            print(error)
        }
        //  the commented-out code directly below makes the sound play when the app enters the foreground.
        //        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.playSound), name: NSNotification.Name.UIApplicationWillEnterForeground, object: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    @IBAction func Play(_ sender: Any) {
        playSound()
    }
    func playSound(){
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
}


