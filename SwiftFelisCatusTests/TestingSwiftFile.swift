//
// Copyright (c) 2016 SwiftFelisCatus contributors
// This program is made available under the terms of the MIT License.
//

class TestSwiftFile {
    static let filename = __FILE__
}

public protocol TestProtocol {
    var getSetString: String { get set }
    var getArrayString: [String] { get }
}

private protocol TestProtocolTypealias {
    typealias T
}

internal class TestClass: TestSwiftFile, TestProtocol {
    static let staticLetStringTypeInference = "string"
    
    static let staticLetArrayString: [String] = ["string", "string"]
    
    static func staticFuncClosure(
        closure: String -> Int,
        @autoclosure autoclosure: () -> Int,
        @noescape noescapeClosure: () -> Int,
        @autoclosure(escaping) escapingAutoclosure: () -> Int)
    {
        escapingAutoclosure()
    }
    
    final func templateFunc<T>(t: T) -> T {
        return t
    }
    
    @inline(__always) func staticFuncInlineAlways<T: Equatable>(t: T) -> String {
        return "string"
    }
    
    @inline(never) func staticFuncInlineNever<T, U: CollectionType where U.Generator.Element == T>(u: U) -> String? {
        return "string"
    }
    
    var getSetString: String = "string"
    var getArrayString: [String] = ["string"].map { $0 + "_appended" }
}