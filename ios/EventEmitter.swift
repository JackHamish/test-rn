import Foundation

@objc(EventEmitter)
class EventEmitter: NSObject {
    private var listeners: [String: [(Any) -> Void]] = [:]

    @objc func on(event: String, listener: @escaping (Any) -> Void) {
        if listeners[event] == nil {
            listeners[event] = []
        }
        listeners[event]?.append(listener)
    }

    @objc func emit(event: String, arg: Any) {
        if let eventListeners = listeners[event] {
            for listener in eventListeners {
                listener(arg)
            }
        }
    }
}