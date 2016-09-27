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
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var dateAddedLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(emoji)
        
        emojiLabel.text = emoji.stringEmoji
        definitionLabel.text = emoji.definition
        dateAddedLabel.text = "Year Added: \(emoji.yearAdded)"
        categoryLabel.text = "Category: \(emoji.category)"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
