//
//  ViewController.swift
//  Animal Sound
//
//  Created by Rodrigo Rodrigues on 23/11/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //-----------------------------------------------------------------------------------
    //  MARK: - UIButton
    //-----------------------------------------------------------------------------------
    
    @IBAction func dog(_ sender: Any) {
        self.playSound(nameSound: "dog")
    }
    
    @IBAction func cat(_ sender: Any) {
        self.playSound(nameSound: "cat")
    }
    
    @IBAction func monkey(_ sender: Any) {
        self.playSound(nameSound: "monkey")
    }
    
    @IBAction func lion(_ sender: Any) {
        self.playSound(nameSound: "lion")
    }
    
    @IBAction func sheep(_ sender: Any) {
        self.playSound(nameSound: "sheep")
    }
    
    @IBAction func cow(_ sender: Any) {
        self.playSound(nameSound: "cow")
    }
    
    //-----------------------------------------------------------------------------------
    //  MARK: - Sounds
    //-----------------------------------------------------------------------------------
    
    func playSound(nameSound: String){
        
        if let path = Bundle.main.path(forResource: nameSound, ofType: "mp3"){
            let url = URL(fileURLWithPath: path)
            
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                player.play()
            }catch{
            }
        }
    }
}
