//
// Copyright (c) 2016 SwiftFelisCatus contributors
// This program is made available under the terms of the MIT License.
//

import SourceKittenFramework

class SourceKitDictionaryScanner {
    private let dictionary: [String : SourceKitRepresentable]
    
    // MARK: - Init
    
    init(dictionary: [String : SourceKitRepresentable]) {
        self.dictionary = dictionary
    }
    
    // MARK: - Scan structure
    
    func scanStructure() -> SourceKitStructure {
        return SourceKitStructure(
            accessibility: self[SourceKitKey.accessibility],
            annotated_decl: self[SourceKitKey.annotated_decl],
            attribute: self[SourceKitKey.attribute], // not supported
            attributes: self[SourceKitKey.attributes], // not supported
            bodylength: self[SourceKitKey.bodylength],
            bodyoffset: self[SourceKitKey.bodyoffset],
            diagnostic_stage: self[SourceKitKey.diagnostic_stage],
            elements: self[SourceKitKey.elements], // not supported
            filepath: self[SourceKitKey.filepath],
            full_as_xml: self[SourceKitKey.full_as_xml],
            inheritedtypes: self[SourceKitKey.inheritedtypes], // not supported
            kind: self[SourceKitKey.kind],
            length: self[SourceKitKey.length],
            name: self[SourceKitKey.name],
            namelength: self[SourceKitKey.namelength],
            nameoffset: self[SourceKitKey.nameoffset],
            offset: self [SourceKitKey.offset],
            runtime_name: self[SourceKitKey.runtime_name], // not supported
            setter_accessibility: self[SourceKitKey.setter_accessibility],
            substructure: self[SourceKitKey.substructure] ?? [],
            syntaxmap: self[SourceKitKey.syntaxmap],
            typename: self[SourceKitKey.typename]
        )
    }
    
    // MARK: - Scan fields
    
    subscript (key: SourceKitKey) -> SourceKitKind? {
        if let string = dictionary[key.rawValue] as? String, value = SourceKitKind(rawValue: string) {
            return value
        } else {
            return nil
        }
    }
    
    subscript (key: SourceKitKey) -> SourceKitAccessibility? {
        if let string = dictionary[key.rawValue] as? String, value = SourceKitAccessibility(rawValue: string) {
            return value
        } else {
            return nil
        }
    }
    
    subscript (key: SourceKitKey) -> Int64? {
        return dictionary[key.rawValue] as? Int64
    }
    
    subscript (key: SourceKitKey) -> String? {
        return dictionary[key.rawValue] as? String
    }
    
    subscript (key: SourceKitKey) -> NSData? {
        return dictionary[key.rawValue] as? NSData
    }
    
    subscript (key: SourceKitKey) -> [SourceKitStructure] {
        if let rawSubstructures = dictionary[key.rawValue] as? [SourceKitRepresentable] {
            var substructures = [SourceKitStructure]()
            for rawSubstructure in rawSubstructures {
                if let rawSubstructureDictionary = rawSubstructure as? [String : SourceKitRepresentable] {
                    let scanner = SourceKitDictionaryScanner(dictionary: rawSubstructureDictionary)
                    let structure = scanner.scanStructure()
                    
                    substructures.append(structure)
                }
            }
            return substructures
        } else {
            return []
        }
    }
}
