//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Grant Brack-Bos on 25/07/2016.
//  Copyright © 2016 Grant Brack-Bos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    // Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps += 1
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImage.hidden = true
            playButton.hidden = true
            howManyTapsTxt.hidden = true
            
            tapButton.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImage.hidden = false
        playButton.hidden = false
        howManyTapsTxt.hidden = false
        
        tapButton.hidden = true
        tapsLabel.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel() {
        tapsLabel.text = "\(currentTaps) Taps"
    }
    
}

