//
//  ContentView.swift
//  GridLayoutTutorial
//
//  Created by Lasse Silkoset on 31/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    let numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    
    @State var number = 5
    
    var body: some View {
        VStack {
            HStack {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(numbers[0..<number], id: \.self) { number in
                        ZStack {
                            Circle()
                                .background(.red)
                                .foregroundColor(.green)
                            Text(number)
                                .font(.title)
                                .padding()

                        }
                        .aspectRatio(2/3, contentMode: .fit)
                    }
                }
               
            }
            
            Spacer()
            
            HStack {
                CustomButton(buttonTitle: "-", handler: {
                    if number > 1 {
                        number -= 1
                    }
                })
                
                Spacer()
                
                CustomButton(buttonTitle: "+", handler: {
                    if number < numbers.count {
                        number += 1
                    }
                })
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
