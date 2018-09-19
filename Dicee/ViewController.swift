//
//  ViewController.swift
//  Dicee
//
//  Created by Endre Mikal Synnes on 18.09.2018.
//  Copyright © 2018 Endre Mikal Synnes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImgView1: UIImageView!
    @IBOutlet weak var diceImgView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rollDices()
    }
    
    func rollDices() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImgView1.image = UIImage(named: diceArray[randomDiceIndex1])
        
        diceImgView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDices()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDices()
    }

}

