//
//  colorLogic.swift
//  fallProject
//
//  Created by Ben Lapidus on 9/25/19.
//  Copyright © 2019 Ben Lapidus. All rights reserved.
//

import Foundation
import UIKit

struct color {
    var color : UIColor
    var hexString : String
}

struct swatch {
    var fullColor : color
    var isLocked : Bool
}


extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
}

extension UIColor
{
    var isDarkColor: Bool {
        var r, g, b, a: CGFloat
        (r, g, b, a) = (0, 0, 0, 0)
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        let lum = 0.2126 * r + 0.7152 * g + 0.0722 * b
        return  lum < 0.50 ? true : false
    }
}

class colorLogic {    
    func generateColor() -> color{
        
        let redConverter = Int(CGFloat(drand48())*255)
        let hexRed = String(redConverter, radix: 16)
        
        let greenConverter = Int(CGFloat(drand48())*255)
        let hexGreen = String(greenConverter, radix: 16)
        
        let blueConverter = Int(CGFloat(drand48())*255)
        let hexBlue = String(blueConverter, radix: 16)

        var hexString : String = hexRed + hexGreen + hexBlue
        hexString = hexString.uppercased()
        let newColor : color = color(color: UIColor(red: CGFloat(Double(redConverter)/255.0), green: CGFloat(Double(greenConverter)/255.0), blue: CGFloat(Double(blueConverter)/255.0), alpha: 1.0), hexString: hexString)

        return newColor
    }
    
    func toggleLock(inputColor : swatch) -> swatch{
        var tempSwatch:swatch = inputColor
        if (tempSwatch.isLocked == true){
            tempSwatch.isLocked = false
            return tempSwatch
        } else {
            tempSwatch.isLocked = true
            return tempSwatch
        }
        
    }

}

