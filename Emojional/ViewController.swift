//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🍏" : "Apple" , "🍟" : "French Fries"]
    var customMessage = ["Apple" : ["I am as sweet as pie (Literally)!", "I am healthy!", "I am grown from a tree 🌳"], "French Fries" : ["I am fried (I needn't say more", "I am from a patato so...","I could be healthy? (Maybe??)"]]
    
    @IBAction func showMessage (sender : UIButton){
        let number = Int.random(in : 0...2)
        let selectedEmotion = sender.titleLabel?.text
        let emojiMessage = customMessage[emojis[selectedEmotion!]!]?[number]
        let alertController = UIAlertController (title : "Snack Time", message : emojiMessage , preferredStyle: UIAlertController.Style.alert )
        alertController.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

