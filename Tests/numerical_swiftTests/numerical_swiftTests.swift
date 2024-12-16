import XCTest

@testable import numerical_swift

class EulerMethodTests: XCTestCase {
    func testEulerMethodLinear() {
        func f(_ x: Double, _ y: Double) -> Double {
            return 2 * x
        }

        let x0 = 0.0
        let y0 = 1.0
        let xEnd = 1.0
        let n = 200
        let h = (xEnd - x0) / Double(n)

        let results = eulerMethod(x0: x0, y0: y0, h: h, steps: n, f: f)
        let x = results.map { $0.0 }
        let y = results.map { $0.1 }

        let expectedX = stride(from: x0, through: xEnd, by: h).map { $0 }
        let expectedY = expectedX.map { 1 + $0 * $0 }

        for i in 0..<x.count {
            XCTAssertEqual(x[i], expectedX[i], accuracy: 0.005)
            XCTAssertEqual(y[i], expectedY[i], accuracy: 0.005)
        }
    }

    //func testEulerMethodExponential() {
    //    func f(_ x: Double, _ y: Double) -> Double {
    //        return y
    //    }

    //    let x0 = 0.0
    //    let y0 = 1.0
    //    let xEnd = 1.0
    //    let n = 100
    //    let h = (xEnd - x0) / Double(n)

    //    let results = eulerMethod(x0: x0, y0: y0, h: h, steps: n, f: f)
    //    let x = results.map { $0.0 }
    //    let y = results.map { $0.1 }

    //    let expectedX = stride(from: x0, through: xEnd, by: h).map { $0 }
    //    let expectedY = expectedX.map { exp($0) }

    //    XCTAssertEqual(x, expectedX, accuracy: 1e-6)
    //    XCTAssertEqual(y, expectedY, accuracy: 1e-6)
    //}

    //func testEulerMethodSine() {
    //    func f(_ x: Double, _ y: Double) -> Double {
    //        return cos(x)
    //    }

    //    let x0 = 0.0
    //    let y0 = 0.0
    //    let xEnd = Double.pi / 2
    //    let n = 100
    //    let h = (xEnd - x0) / Double(n)

    //    let results = eulerMethod(x0: x0, y0: y0, h: h, steps: n, f: f)
    //    let x = results.map { $0.0 }
    //    let y = results.map { $0.1 }

    //    let expectedX = stride(from: x0, through: xEnd, by: h).map { $0 }
    //    let expectedY = expectedX.map { sin($0) }

    //    XCTAssertEqual(x, expectedX, accuracy: 1e-6)
    //    XCTAssertEqual(y, expectedY, accuracy: 1e-6)
    //}
}
