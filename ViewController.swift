//
//  ViewController.swift
//  War
//
//  Created by Chris Rowlands on 13/04/2017.
//  Copyright © 2017 Yellow Lemon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    let cardNames = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "king", "queen"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: UIButton) {
        
        //Randomise left number from 0 to 12
        let leftNumber = Int(arc4random_uniform(13))
        
        //Set the left image
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        //Randomise right number from 0 to 12
        let rightNumber = Int(arc4random_uniform(13))
        
        //Set the right image
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        //Compare card numbers
        if leftNumber > rightNumber {
            // Incriment score
            leftScore += 1
            
            // Update label
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber {
            
        }
        else {
            //Incriment score
            rightScore += 1
            
            //Update lebel
            rightScoreLabel.text = String(rightScore)
        }
    }

}

