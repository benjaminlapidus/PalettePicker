//
//  ViewController.swift
//  fallProject
//
//  Created by Ben Lapidus on 9/25/19.
//  Copyright © 2019 Ben Lapidus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    @IBOutlet weak var fifthView: UIView!
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var fifthButton: UIButton!
    
    @IBOutlet weak var firstDescView: UILabel!
    @IBOutlet weak var secondDescView: UILabel!
    @IBOutlet weak var thirdDescView: UILabel!
    @IBOutlet weak var fourthDescView: UILabel!
    @IBOutlet weak var fifthDescView: UILabel!
    
    var newColor = colorLogic()
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        colorSwitcher(self)
        // Do any additional setup after loading the view.
    }
    var swatchDefault : swatch = swatch(fullColor: color(color: UIColor.black, hexString: ""), isLocked: false)

    lazy var swatchOne : swatch = swatchDefault
    lazy var swatchTwo : swatch = swatchDefault
    lazy var swatchThree : swatch = swatchDefault
    lazy var swatchFour : swatch = swatchDefault
    lazy var swatchFive : swatch = swatchDefault
    
    @IBAction func firstButton(_ sender: Any) {
        if (swatchOne.isLocked){
            firstButton.setTitle("🔓", for: .normal)
        } else {
            firstButton.setTitle("🔒", for: .normal)
        }
        swatchOne = newColor.toggleLock(inputColor: swatchOne)
        
    }
    @IBAction func secondButton(_ sender: Any) {
        if (swatchTwo.isLocked){
            secondButton.setTitle("🔓", for: .normal)
        } else {
            secondButton.setTitle("🔒", for: .normal)
        }
        swatchTwo = newColor.toggleLock(inputColor: swatchTwo)
    }
    @IBAction func thirdView(_ sender: Any) {
        if (swatchThree.isLocked){
            thirdButton.setTitle("🔓", for: .normal)
        } else {
            thirdButton.setTitle("🔒", for: .normal)
        }
        swatchThree = newColor.toggleLock(inputColor: swatchThree)
    }
    @IBAction func fourthButton(_ sender: Any) {
        if (swatchFour.isLocked){
            fourthButton.setTitle("🔓", for: .normal)
        } else {
            fourthButton.setTitle("🔒", for: .normal)
        }
        swatchFour = newColor.toggleLock(inputColor: swatchFour)
    }
    @IBAction func fifthButton(_ sender: Any) {
        if (swatchFive.isLocked){
            fifthButton.setTitle("🔓", for: .normal)
        } else {
            fifthButton.setTitle("🔒", for: .normal)
        }
        swatchFive = newColor.toggleLock(inputColor: swatchFive)
    }
    
    @IBAction func colorSwitcher(_ sender: Any) {
        if (!swatchOne.isLocked){
            swatchOne.fullColor = newColor.generateColor()
            firstView.backgroundColor = swatchOne.fullColor.color
            firstDescView.text = "(Hex: \(String((swatchOne.fullColor.hexString))))"
            if (firstView.backgroundColor?.isDarkColor == true){
                firstDescView.textColor = .white
            } else {
                firstDescView.textColor = .black
            }
        }

        if (!swatchTwo.isLocked){
            let secondColor : color  = newColor.generateColor()
            secondView.backgroundColor = secondColor.color
            
            
            
            secondDescView.text = "(Hex: \(String(secondColor.hexString)))"

            if (secondView.backgroundColor?.isDarkColor == true){
                secondDescView.textColor = .white
            } else {
                secondDescView.textColor = .black
            }
        }
        
        if (!swatchThree.isLocked){
            let thirdColor : color  = newColor.generateColor()
            thirdView.backgroundColor = thirdColor.color
            thirdDescView.text = "(Hex: \(String(thirdColor.hexString)))"

            if (thirdView.backgroundColor?.isDarkColor == true){
                thirdDescView.textColor = .white
            } else {
                thirdDescView.textColor = .black
            }
        }
            
        if (!swatchFour.isLocked){
            let fourthColor : color  = newColor.generateColor()
            fourthView.backgroundColor = fourthColor.color
            fourthDescView.text = "(Hex: \(String(fourthColor.hexString)))"

            if (fourthView.backgroundColor?.isDarkColor == true){
                fourthDescView.textColor = .white
            } else {
                fourthDescView.textColor = .black
            }
        }

        if (!swatchFive.isLocked){
            let fifthColor : color  = newColor.generateColor()
            fifthView.backgroundColor = fifthColor.color
            fifthDescView.text = "(Hex: \(String(fifthColor.hexString)))"

            if (fifthView.backgroundColor?.isDarkColor == true){
                fifthDescView.textColor = .white
            } else {
                fifthDescView.textColor = .black
            }
        }
    }
}

