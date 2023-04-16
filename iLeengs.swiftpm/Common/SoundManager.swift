//
//  SoundManager.swift
//  iLeengs
//
//  Created by Achmad Rijalu on 13/04/23.
//

import Foundation
import AVKit

class SoundManager{
    static let instance = SoundManager()
    
    var player:AVAudioPlayer?
    
    func playSound(){
        guard let url =  Bundle.main.url(forResource: "ding", withExtension: ".mp3")
                
        else{
            print("else ini")
            return
        }
        
        do {
            print("DO")
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }
        catch let error{
            print("Error play the sound effect. \(error.localizedDescription )")
        }
        
    }
}
