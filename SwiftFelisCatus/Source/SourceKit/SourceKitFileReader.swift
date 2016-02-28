//
// Copyright (c) 2016 SwiftFelisCatus contributors
// This program is made available under the terms of the MIT License.
//

import SourceKittenFramework

public final class SourceKitFileReader {
    public init() {
    }
    
    public func readFile(path: String) -> SourceKitFile? {
        if let file = File(path: path) {
            let structure = Structure(file: file)
            let scanner = SourceKitDictionaryScanner(dictionary: structure.dictionary)
            
            let file = SourceKitFile(
                path: path,
                contents: file.contents,
                structure: scanner.scanStructure()
            )
            
            return file
        } else {
            return nil
        }
    }
}