//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Spencer Johnson on 9/25/16.
//  Copyright © 2016 Spencer Johnson. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(emoji)
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            
        definitionLabel.text = "This is a smiley face"
    
        }
        
        if emoji == "😉" {
            
            definitionLabel.text = "This is a wink face"
            
        }
        
        if emoji == "😏" {
            
            definitionLabel.text = "This is a smug face"
            
        }
        
        if emoji == "🐸" {
            
            definitionLabel.text = "This is a frog"
            
        }
        
        if emoji == "🐳" {
            
            definitionLabel.text = "This is a whale"
            
        }
        
        if emoji == "🐡" {
            
            definitionLabel.text = "This is a blowfish"
            
        }
        
        if emoji == "🐣" {
            
            definitionLabel.text = "This is a chick hatching"
            
        }
        
        if emoji == "🦁" {
            
            definitionLabel.text = "This is a lion"
            
        }
        
        if emoji == "🐹" {
            
            definitionLabel.text = "This is a hamster"
            
        }
        
        if emoji == "👺" {
            
            definitionLabel.text = "This is a bitch"
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
