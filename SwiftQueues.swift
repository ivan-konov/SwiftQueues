//The MIT License (MIT)
//
//Copyright (c) 2015 Ivan Konov
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.
//

struct SwiftQueue <T: Equatable> {
    typealias ElementType = T
    
    private var storage = [ElementType]()
    
    // MARK: Queryng the Queue
    var count: Int {
        return storage.count
    }
    
    var isEmpty: Bool {
        return storage.isEmpty
    }
    
    func front() -> ElementType? {
        return storage.first
    }
    
    func back() -> ElementType? {
        return storage.last
    }
    
    func findElement(element: ElementType) -> Int? {
        return find(storage, element)
    }
    
    // MARK: Adding and Removing Elements
    
    mutating func pushBack(element: ElementType) {
        storage.append(element)
    }
    
    mutating func popFront() -> ElementType? {
        if let first = storage.first {
            storage.removeAtIndex(0)
            
            return first
        }
        
        return nil
    }
    
    mutating func clear() {
        storage.removeAll()
    }
}

// MARK: Debug

extension SwiftQueue: Printable {
    var description: String {
        return storage.description
    }
}