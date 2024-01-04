//
//  RoundedViews.swift
//  ControllerApp
//
//  Created by Rodrigo Torres on 26/12/2023.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    let systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
                    .frame(width: 55.0, height: 55.0)
            )
            .frame(width: 56, height: 56)
    }
}

struct RoundedImageViewFilled: View {
    let systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56, height: 56)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundedRectTextView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: 68, height: 56)
            .foregroundColor((Color("TextColor")))
            .overlay(
                RoundedRectangle(cornerRadius: 21.0)
                    .stroke(lineWidth: 2)
                    .foregroundColor(Color("ButtonStrokeColor"))
            )
    }
    
}

struct IconsViewPreview: View {
    var body: some View {
        VStack {
            RoundedImageViewFilled(systemName: "arrow.counterclockwise")
            RoundedImageViewStroked(systemName: "list.dash")
            RoundedRectTextView(text: "10")
        }
    }
    
}

struct IconsViews_Previews: PreviewProvider {
    static var previews: some View {
        IconsViewPreview()
        IconsViewPreview()
            .preferredColorScheme(.dark)
    }
}
