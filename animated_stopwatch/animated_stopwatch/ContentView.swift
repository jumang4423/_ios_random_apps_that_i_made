//
//  ContentView.swift
//  animated_stopwatch
//
//  Created by jumango pussu on 2021/12/08.
//

import SwiftUI

struct ContentView: View {
    @StateObject var timer = TimerModel()
    var body: some View {
        ScrollView {
            VStack{
                TimerSelf(count: timer.count)
                HStack {
                    Button {
                        if (timer.isTimerOn()) {
                            timer.stop()
                        } else {
                            timer.start()
                        }
                    } label: {
                        Text(timer.isTimerOn() ? "STOP" : "START")
                            .padding()
                    }
                    Button {
                        timer.memorize()
                    } label: {
                        Text("MEM")
                            .padding()
                    }
                    .disabled(!timer.isTimerOn())
                }
            }
            .padding()
            Divider()
            HistoryView(history: timer.history)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
