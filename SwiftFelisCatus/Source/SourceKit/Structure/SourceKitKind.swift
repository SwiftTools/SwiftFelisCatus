//
// Copyright (c) 2016 SwiftFelisCatus contributors
// This program is made available under the terms of the MIT License.
//

// Note: members should be sorted by name
public enum SourceKitKind: String {
    case decl_class = "source.lang.swift.decl.class"
    case decl_enum = "source.lang.swift.decl.enum"
    case decl_enumcase = "source.lang.swift.decl.enumcase"
    case decl_enumelement = "source.lang.swift.decl.enumelement"
    case decl_extension = "source.lang.swift.decl.extension"
    case decl_extension_class = "source.lang.swift.decl.extension.class"
    case decl_extension_enum = "source.lang.swift.decl.extension.enum"
    case decl_extension_protocol = "source.lang.swift.decl.extension.protocol"
    case decl_extension_struct = "source.lang.swift.decl.extension.struct"
    case decl_function_accessor_address = "source.lang.swift.decl.function.accessor.address"
    case decl_function_accessor_didset = "source.lang.swift.decl.function.accessor.didset"
    case decl_function_accessor_getter = "source.lang.swift.decl.function.accessor.getter"
    case decl_function_accessor_mutableaddress = "source.lang.swift.decl.function.accessor.mutableaddress"
    case decl_function_accessor_setter = "source.lang.swift.decl.function.accessor.setter"
    case decl_function_accessor_willset = "source.lang.swift.decl.function.accessor.willset"
    case decl_function_constructor = "source.lang.swift.decl.function.constructor"
    case decl_function_destructor = "source.lang.swift.decl.function.destructor"
    case decl_function_free = "source.lang.swift.decl.function.free"
    case decl_function_method_class = "source.lang.swift.decl.function.method.class"
    case decl_function_method_instance = "source.lang.swift.decl.function.method.instance"
    case decl_function_method_static = "source.lang.swift.decl.function.method.static"
    case decl_function_operator = "source.lang.swift.decl.function.operator"
    case decl_function_subscript = "source.lang.swift.decl.function.subscript"
    case decl_generic_type_param = "source.lang.swift.decl.generic_type_param"
    case decl_module = "source.lang.swift.decl.module"
    case decl_protocol = "source.lang.swift.decl.protocol"
    case decl_struct = "source.lang.swift.decl.struct"
    case decl_typealias = "source.lang.swift.decl.typealias"
    case decl_var_class = "source.lang.swift.decl.var.class"
    case decl_var_global = "source.lang.swift.decl.var.global"
    case decl_var_instance = "source.lang.swift.decl.var.instance"
    case decl_var_local = "source.lang.swift.decl.var.local"
    case decl_var_parameter = "source.lang.swift.decl.var.parameter"
    case decl_var_static = "source.lang.swift.decl.var.static"
    case structure_elem_expr = "source.lang.swift.structure.elem.expr"
}