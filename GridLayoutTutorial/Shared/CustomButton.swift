//
//  CustomButton.swift
//  GridLayoutTutorial
//
//  Created by Lasse Silkoset on 31/08/2022.
//

import SwiftUI

struct CustomButton: View {
    
    let buttonTitle: String
    var handler: () -> ()
    
    var body: some View {
        ZStack {
            Button {
                handler()
            } label: {
                ZStack {
                    Circle()
                        .stroke()
                    Text(buttonTitle)
                        .font(.title)
                }
            }
            .frame(width: 80, height: 80, alignment: .center)
            .padding()
            .padding(.trailing)
        }
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(buttonTitle: "+", handler: {})
        CustomButton(buttonTitle: "+", handler: {})
            .previewLayout(.sizeThatFits)
       // CustomButton(buttonTitle: "", handler: {})
       //     .preferredColorScheme(.dark)
        
    }
}
