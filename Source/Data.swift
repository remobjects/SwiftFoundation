//
//  Data.swift
//  SwiftFoundation
//
//  Created by Alsey Coleman Miller on 6/28/15.
//  Copyright © 2015 ColemanCDA. All rights reserved.
//

/** Encapsulates data. */
public protocol DataType: class, CollectionType, ByteValue {
    
    // MARK: - Properties
    
    /** Number of bytes. */
    var count: UInt { get }
    
    /** Data pointer. */
    var byteValue: (UnsafePointer<Void>, UInt) { get }
}

public protocol MutableDataType: DataType, MutableCollectionType {
    
    
}

public extension DataType {
    
    var count: UInt {
        
        return byteValue.1
    }
    
    var isEmpty: Bool {
        
        return count == 0
    }
}

public struct DataArray {
    
    // MARK: - Private Properties
    
    private var internalValue: UnsafeBufferPointer<UInt8>
    
    init(
}

final public class DataPointer: DataType {
    
    public let byteValue: (UnsafePointer<Void>, UInt)
    
    public init(byteValue: (UnsafePointer<Void>, UInt)) {
        
        self.byteValue = byteValue
    }
}