//
//  ViewController.swift
//  War
//
//  Created by Kyle Jennings on 1/12/16.
//  Copyright © 2016 Kyle Jennings. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var p1: UILabel!
    @IBOutlet weak var p2: UILabel!
    @IBOutlet var p1Points: UILabel!
    @IBOutlet var p2Points: UILabel!
    var p1Point: Int = 0
    var p2Point: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: AnyObject) {
        let ranNum = arc4random_uniform(13)+1
        let ranCard = String(format: "card%i", ranNum)
        
        let ranNum2 = arc4random_uniform(13)+1
        let ranCard2 = String(format: "card%i", ranNum2)

        self.firstCardImageView.image = UIImage(named: ranCard)
        self.secondCardImageView.image = UIImage(named: ranCard2)
        if (ranNum > ranNum2) {
            p1.text = "You Win!"
            p1Points.text = "\(++p1Point)"
            p2.text = "You Lose"
            
        }
        else if (ranNum < ranNum2) {
            p1.text = "You Lose"
            p2Point++
            p2Points.text = String(p2Point)
            p2.text = "You Win!"
        }
        else {
            p1.text = "Tie!"
            p2.text = "Tie!"
        }
    }

}

