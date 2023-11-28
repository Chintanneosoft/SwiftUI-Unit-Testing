//
//  Coverters.swift
//  SwiftUI Unit Testing
//
//  Created by Neosoft on 28/11/23.
//

import Foundation

class Converters{
    
    func convertRsToUSD(rupees: String) -> String{
        let usdRate = 0.012
        let rs = Double(rupees) ?? 0
        
        if rs < 0{
            return "Enter a Positive Number"
        }
        
        if rs > 100000000000000{
            return "Number to Big to be Converted"
        }
        
        if rupees == ""{
            return "Enter a Number"
        }
        
        return "\(String(format:"%.2f", rs * usdRate))"
    }
    
    func convertUSDToRs(usDollar: String) -> String{
        let rsRate = 83.37
        let usd = Double(usDollar) ?? 0
        
        if usd < 0{
            return "Enter a Positive Number"
        }
        
        if usd > 100000000000000{
            return "Number to Big to be Converted"
        }
        
        if usDollar == ""{
            return "Enter a Number"
        }
        
        return "\(String(format:"%.2f", usd * rsRate))"
    }
}
