//
//  TimerSelf.swift
//  animated_stopwatch
//
//  Created by jumango pussu on 2021/12/08.
//

import SwiftUI

struct TimerSelf: View {
    
    var count: Double
    
    var body: some View {
        Text("🐶 \(count) s")
            .font(.system(size: 24, weight: .light, design: .default))
            .padding()
    }
}

struct TimerSelf_Previews: PreviewProvider {
    static var previews: some View {
        TimerSelf(count: 1.234)
    }
}
