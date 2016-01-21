//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Brian on 1/12/16.
//  Copyright © 2016 Brian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!){
        currentTaps++
        updateTapsLbl()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    @IBAction func onPlayButtonPressed(sender: UIButton!){
        
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""{
            
            logoImg.hidden = true
            howManyTapsTxt.hidden = true
            playBtn.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
        
    }
    
    func updateTapsLbl(){
        tapsLbl.text = "\(currentTaps) Taps"
    }
    
    func isGameOver()-> Bool{
        if currentTaps >= maxTaps{
           return true
        }else{
            return false
        }
    }
    
    func restartGame(){
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        howManyTapsTxt.hidden = false
        playBtn.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
        
    }

}

