# SwiftQueues

SwiftQueues is a queue and a dequeue implementation for Swift.
It uses an array as underlying storage.

Feedback is welcome and greatly appreciated!

## Usage

### Features shared by both types(using queue for the examples)
```swift
// create an empty queue of strings
var queue = SwiftQueue<String>()

// add an element in the back
queue.pushBack("element")

// remove an element from the front
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

// iterate over the collections

for element in queue {
  println(element)
}

```

### Dequeue specific features
```swift

// create an empty dequeue of Ints
var dequeue = SwiftDequeue<Int>()

// add an element in the front
queue.pushFront(0)

// remove an element from the back
let poppedElement = queue.popBack()

```

## Future Updates

Both collections are implemented as structs because they are more suitable to be value types rather than classes. Unfortunately Swift structs do not support inheritance. I will try to come up with a solution that will eliminate the repetitive code.

## License
SwiftQueues is MIT-licensed.  
If you use it please acknowledge it and tell me about it!
