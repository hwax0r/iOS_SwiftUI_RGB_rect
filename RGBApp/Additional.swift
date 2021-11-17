//
//  Additional.swift
//  RGBApp
//
//  Created by David Sergeev on 16.11.2021.
//

import Foundation


func numsToRgb(red r:Double, green g: Double, blue b: Double) -> (red: UInt32, green: UInt32, blue: UInt32) {
    // Input: RGB colors in range Double[0, 1.0]
    // Output: RGB colors in range Int[0, 255]
    
    let r = (UInt32)(r * 255)
    let g = (UInt32)(g * 255)
    let b = (UInt32)(b * 255)
    
    let result = (r, g, b)
    return result
}

func rgbToHex(red r:Double, green g: Double, blue b: Double) -> String {
    // Input: RGB colors in range Double[0, 1.0]
    // Output: RGB colors in HEX [000000, FFFFFF]
    
    let (r, g, b) = numsToRgb(red: r, green: g, blue: b)
    let rgb: UInt32 = r<<16 | g<<8 | b<<0
    
    let rgbText = NSString(format:"#%06x", rgb) as String
    return rgbText
}
