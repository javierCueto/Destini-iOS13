//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }
    
    
    @IBAction func pressedButton(_ sender: UIButton) {
        let chosenButton = sender.tag
        var destiny = 0
        
        if chosenButton == 1 {
            destiny = storyBrain.getDestiny1()
        }else{
            destiny = storyBrain.getDestiny2()
        }
        
        storyBrain.changeDestiny(destiny)
        
        
        nextQuestion()
        
    //Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(), userInfo: nil, repeats: false)
           
    }
       
    @objc func nextQuestion(){
        storyLabel.text = storyBrain.getNextStory()
        choice1Button.setTitle(storyBrain.getChoise1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoise2(), for: .normal)
    }
    


}

