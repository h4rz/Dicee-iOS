//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onRollButtonClick(_ sender: UIButton) {
        let diceList = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        let diceListSize = diceList.count-1
        let randomIndexDice1 = Int.random(in: 0...diceListSize)
        let randomIndexDice2 = Int.random(in: 0...diceListSize)
        diceImageView1.image = diceList[randomIndexDice1]
        diceImageView2.image = diceList[randomIndexDice2]
    }
}

