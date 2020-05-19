//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by cchen_xiao_shuang@163.com on 05/19/2020.
//  Copyright (c) 2020 cchen_xiao_shuang@163.com. All rights reserved.
//

import UIKit
import BlinkingLabel
 
class ViewController: UIViewController {
 
    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(x: 10, y: 20, width: 200, height: 30))
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
 
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: 10, y: 60, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: UIControlState.normal)
        toggleButton.setTitleColor(UIColor.red, for: UIControlState.normal)
        toggleButton.addTarget(self, action: Selector(("toggleBlinking")), for: UIControlEvents.touchUpInside)
        view.addSubview(toggleButton)
    }
 
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
 
}
