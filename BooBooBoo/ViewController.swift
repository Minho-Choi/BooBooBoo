//
//  ViewController.swift
//  BooBooBoo
//
//  Created by Minho Choi on 2020/10/16.
//

import UIKit
import AVFoundation

var soundEffect: AVAudioPlayer?

class ViewController: UIViewController {

    @IBAction func airhornButton(_ sender: UIButton) {
        playSound()
    }
    
    
    @IBOutlet weak var airhornButtonLook: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    private func playSound() {
        let url = Bundle.main.url(forResource: "Airhorn", withExtension: "mp3")
        if let url = url {
            do {
                soundEffect = try AVAudioPlayer(contentsOf: url)
                guard let sound = soundEffect else { return }
                sound.prepareToPlay()
                sound.play()
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }

}

