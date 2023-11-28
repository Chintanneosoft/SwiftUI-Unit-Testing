//
//  View Model.swift
//  SwiftUI Unit Testing
//
//  Created by Neosoft on 28/11/23.
//

import Foundation
import UIKit

class ViewModel: ObservableObject{
    @Published var text = ""
    @Published  var convertedText = ""
    private let converter = Converters()
    
    func convertRsToUSD(){
        convertedText = converter.convertRsToUSD(rupees: text)
        hideKeyboard()
    }
    
    func convertUSDToRs(){
        convertedText = converter.convertUSDToRs(usDollar: text)
        hideKeyboard()
    }
    
    private func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
