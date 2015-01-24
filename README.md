# SwiftQueues

SwiftQueues is a queue and a dequeue implementation for Swift.
It uses an array as underlying storage.

Feedback is welcome and greatly appreciated!

## Usage

```swift
// create an empty queue of strings
var queue = SwiftQueue<String>()

// add an element
queue.pushBack("element")

// remove an element
let poppedElement = queue.popFront()

// remove all elements
queue.clear()

// get front element
queue.front()

// get back element
queue.back()

// check if queue is empty
let empty = queue.isEmpty

// get count of the elements contained in the queue
let queueCount = queue.count

// check if an element is contained in the queue and get it's index in the stack if present
let indexOfElement = stack.findElement("element")

```

## Future Updates

Dequeue implementation is coming soon!

## License
SwiftQueues is MIT-licensed.  
If you use it please acknowledge it and tell me about it!
