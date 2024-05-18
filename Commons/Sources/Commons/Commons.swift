// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

public class CommonMethods {
    public static let shared = CommonMethods()
    private init() {}
    
    public func ShowLog(string: String) {
        debugPrint(string)
    }
}
