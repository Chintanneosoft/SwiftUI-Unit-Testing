//
//  ContentView.swift
//  SwiftUI Unit Testing
//
//  Created by Neosoft on 28/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var converterSelection = 1
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack{
            Text("Currency Converter")
            
            Picker(selection: $converterSelection, label: Text("Picker"), content: {
                Text("Rupees to USD").tag(1)
                Text("USD to Rupees").tag(2)
            })
            .accessibilityLabel(Text("Picker"))
            
            HorizontalView(symbol: converterSelection == 1 ? "₹" : "$", placeHolder: "Enter Currency", text: $viewModel.text)
            HorizontalView(symbol: converterSelection == 1 ? "$" : "₹", placeHolder: "Converted Currency", text: $viewModel.convertedText)
                .disabled(true)
            
            Button("Convert"){
                if converterSelection == 1{
                    viewModel.convertRsToUSD()
                } else {
                    viewModel.convertUSDToRs()
                }
            }
        }
        .padding()
        .onChange(of: converterSelection) { newValue in
            viewModel.text = ""
            viewModel.convertedText = ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HorizontalView: View {
    let symbol: String
    let placeHolder: String
    @Binding var text: String
    
    var body: some View {
        HStack{
            Text(symbol)
            TextField(placeHolder, text: $text)
        }
    }
}
