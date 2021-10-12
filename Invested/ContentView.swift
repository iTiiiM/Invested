//
//  ContentView.swift
//  Invested
//
//  Created by Piyatat  Thianboonsong on 26/9/2564 BE.
//

import SwiftUI
let defaultPadding: CGFloat = 15

struct ContentView: View {
    
    
    var body: some View {
        GeometryReader { proxy in
            
            VStack(alignment: .leading) {
                ValueSummaryCardView()
                TokenOwnedBar()

                ForEach(1...10, id: \.self) { num in
                    TokenSummaryCardView(parentGeometry: proxy)

                }
                Spacer()
                
            }.padding(defaultPadding)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TokenOwnedBar: View {
    var body: some View {
        HStack {
            Text("Token owned")
            Spacer()
            Button("Showall", action: {})
        }.padding().background(Color.accentGreen)
    }
}

struct TokenSummaryCardView: View {
    var parentGeometry: GeometryProxy
    var body: some View {
        VStack {
            HStack {
                Text("ADA")
                Image(systemName: "eye")
            }
            HStack {
                Text("Amount")
                Text("100")
            }
            HStack {
                Text("Value")
                Text("1800$")
            }
        }.frame(width: (parentGeometry.size.width - defaultPadding)/2, height: (parentGeometry.size.width - defaultPadding)/2)
    }
}
