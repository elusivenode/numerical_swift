// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

// Euler's Method function with a generic f(x, y)
public func eulerMethod(
    x0: Double,
    y0: Double,
    h: Double,
    steps: Int,
    f: (Double, Double) -> Double  // Pass f(x, y) as a closure
) -> [(Double, Double)] {
    var results: [(Double, Double)] = []
    var x = x0
    var y = y0

    results.append((x, y))  // Initial condition

    for _ in 1...steps {
        y = y + h * f(x, y)  // Euler's formula
        x = x + h
        results.append((x, y))  // Store the result
    }

    return results
}
