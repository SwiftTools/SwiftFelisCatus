//
// Copyright (c) 2016 SwiftFelisCatus contributors
// This program is made available under the terms of the MIT License.
//

public struct SourceKitStructure {
    // Note: members should be sorted by name
    public var accessibility: SourceKitAccessibility?
    public var annotated_decl: String?
    public var attributes: [SourceKitAttribute]
    public var bodylength: Int64?
    public var bodyoffset: Int64?
    public var diagnostic_stage: String?
    public var elements: [SourceKitStructure]
    public var filepath: String?
    public var full_as_xml: String?
    public var inheritedtypes: [SourceKitStructure]
    public var kind: SourceKitKind?
    public var length: Int64?
    public var name: String?
    public var namelength: Int64?
    public var nameoffset: Int64?
    public var offset: Int64?
    public var runtime_name: String?
    public var setter_accessibility: SourceKitAccessibility?
    public var substructure: [SourceKitStructure]
    public var syntaxmap: NSData?
    public var typename: String?
}