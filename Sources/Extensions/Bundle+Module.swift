//
//  Bundle+Module.swift
//  Pods
//
//  Created by Lakshya Nagal on 5/2/25.
//
import Foundation

public extension Bundle {
    static func moduleBundle(named name: String, for cls: AnyClass) -> Bundle {
        let bundle = Bundle(for: cls)

        guard let path = bundle.path(forResource: name, ofType: "bundle") else {
            return bundle
        }

        return Bundle(path: path) ?? bundle
    }
}

internal extension Bundle {
    static var moduleBundle: Bundle {
        return self.moduleBundle(named: "GLCore", for: BundleToken.self)
    }
}

private final class BundleToken {}
