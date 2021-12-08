import Foundation
import Combine

class TimerModel: ObservableObject {
    @Published var timer: AnyCancellable!
    @Published var count: Double = 0
    @Published var history: [Double] = []
    private var _interval = 0.01
    
    func isTimerOn() -> Bool {
        return timer != nil
    }
    
    func start() {
        
        DispatchQueue.main.async {
            self.history = []
        }
        
        if let _timer = timer{
            _timer.cancel()
        }
        timer = Timer.publish(every: _interval, on: .main, in: .common)
            .autoconnect()
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: ({_ in
                self.count += self._interval
            }))
    }
    
    func stop() {
        timer?.cancel()
        timer = nil
        DispatchQueue.main.async {
            self.count = 0.0
        }
    }
    
    func memorize() {
        DispatchQueue.main.async {
            self.history.append(self.count)
        }
    }
}
