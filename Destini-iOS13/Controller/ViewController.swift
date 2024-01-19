//
//  ViewController.swift
//  Destini-iOS13
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        storyLoad()
    }

    @IBAction func ansPressed(_ sender: UIButton) {
        var userChoice = sender.currentTitle
        storyBrain.nextStories(userChoice!)
        storyLoad()
    }
    
    func storyLoad() {
        storyLabel.text = storyBrain.getLabelText()
        var choices = storyBrain.getchoiceText()
        choice1Button.setTitle(choices[0], for: .normal)
        choice2Button.setTitle(choices[1], for: .normal)
    }
}

