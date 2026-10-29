import XCTest
import SwiftTreeSitter
import TreeSitterRustOrchard

final class TreeSitterRustOrchardTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_rust_orchard())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Rust grammar")
    }
}
