//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Spencer Johnson on 9/25/16.
//  Copyright © 2016 Spencer Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.yearAdded = 2009
        emoji1.category = "Smiley"
        emoji1.definition = "This is a smiling face."
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😉"
        emoji2.yearAdded = 2010
        emoji2.category = "Smiley"
        emoji2.definition = "This is a winking face."
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😏"
        emoji3.yearAdded = 2011
        emoji3.category = "Smiley"
        emoji3.definition = "This is a smug face."
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐸"
        emoji4.yearAdded = 2012
        emoji4.category = "Animal"
        emoji4.definition = "This is a frog's face."
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐳"
        emoji5.yearAdded = 2013
        emoji5.category = "Animal"
        emoji5.definition = "This is a whale."
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐡"
        emoji6.yearAdded = 2014
        emoji6.category = "Animals"
        emoji6.definition = "This is a blowfish."
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🐣"
        emoji7.yearAdded = 2015
        emoji7.category = "Animals"
        emoji7.definition = "This is a chick hatching."
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🦁"
        emoji8.yearAdded = 2016
        emoji8.category = "Animals"
        emoji8.definition = "This is a lion's face."
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "🐹"
        emoji9.yearAdded = 2017
        emoji9.category = "Animals"
        emoji9.definition = "This is a hamster's face."
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "👺"
        emoji10.yearAdded = 2018
        emoji10.category = "No Idea"
        emoji10.definition = "I have no idea what the hell this is."
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9,emoji10]

    }

}

