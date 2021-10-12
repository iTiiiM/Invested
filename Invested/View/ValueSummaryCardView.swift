//
//  ValueSummaryCardView.swift
//  Invested
//
//  Created by Piyatat  Thianboonsong on 12/10/2564 BE.
//

import Foundation
import SwiftUI

struct ValueSummaryCardView: View {
    @State private var totalInvestedMoney = 2000

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Current Value ")
                Text("$\(totalInvestedMoney)")
                Text("(+ 12.00 %)")
            }.padding()
            HStack {
                Text("Invested ")
                Text("$\(totalInvestedMoney)")
                Text("(+ 12.00 %)")
            }.padding()
        }.frame(maxWidth: .infinity).padding().background(Color.accentGreen).cornerRadius(10)
    }
}
