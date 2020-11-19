//
//  SoundManager.swift
//  MatchApp
//
//  Created by nasrinlida on 3/11/20.
//

import Foundation
import AVFoundation

class SoundManager {
    
    var audioPlayer:AVAudioPlayer?
    
    enum SoundEffect {
        
        case flip
        case match
        case nomatch
        case shuffle
        
    }
    
    func playSound(effect:SoundEffect) {
        
        var soundFileName = ""
        
        switch effect {
        
            case .flip:
                soundFileName = "cardflip"
                
            case .match:
                soundFileName = "dingcorrect"
                
            case .nomatch:
                soundFileName = "dingwrong"
                
            case .shuffle:
                soundFileName = "shuffle"
            
        }
        
        //Get the path to the resource
        let bundlePath = Bundle.main.path(forResource: soundFileName, ofType: ".wav")
        //This bundle path is just a string that just returns a string representing the file path to that resource
        
        //Check that it's not nil
        
        //guard statement is used to protect against certain scenarios, we can use if statement here instead of the guard statement to check nil
        
        guard bundlePath != nil else { //"guard bundlePath != nil else return"- means make sure that the bundle path is not equal to nil, otherwise return.
            
            //Couldn't find the resource, so exit
            return
        }
        
        let url = URL(fileURLWithPath: bundlePath!)
        
        do {
            
            //Create the audio player
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            
            //Play the sound effect
            audioPlayer?.play()
        }
        
        catch {
            
            print("Couldn't create an audio player.")
            return
        }
        
        
        
        
        
        

    }
}
