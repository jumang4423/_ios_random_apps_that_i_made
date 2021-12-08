//
//  HistoryView.swift
//  animated_stopwatch
//
//  Created by jumango pussu on 2021/12/08.
//

import SwiftUI

struct HistoryView: View {
    
    var history: [Double]
    
    var body: some View {
        VStack() {
            ForEach(Array(history.enumerated().reversed()), id: \.offset) { index, element in
                Text("\(index + 1). \(element) s")
                    .opacity( Double(index + 1) / Double(history.count))
                    .padding(4)
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: [2.5, 3.1, 23,234,])
    }
}
