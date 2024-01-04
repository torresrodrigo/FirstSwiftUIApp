//
//  TextViews.swift
//  BulleyesApp
//
//  Created by Rodrigo Torres on 24/12/2023.
//

import SwiftUI

struct InstructionsText: View {
    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("TextColor"))
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .kerning(2.0)
            .padding(.horizontal, 30)
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
    }
}


struct SliderLabelText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .bold()
    }
}

struct LabelText: View {
    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .kerning(1.5)
            .font(.caption)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            BigNumberText(text: "000")
            InstructionsText(text: "Instructions")
            SliderLabelText(text: "1")
            LabelText(text: "Score")
        }
        .previewDevice("Iphone 14")
    }
}
