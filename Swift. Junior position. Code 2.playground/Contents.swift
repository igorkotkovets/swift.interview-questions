import UIKit
// Page 1

/*
// Will the code below compile?
struct Foo {
    let first = 1
}

extension Foo {
    var second = 2
}

var foo1 = Foo()
foo1.first = 1

let foo2 = Foo()
foo2.second = 2
*/

// ================================================================

/*
// Code improvements
enum AppColors: UIColor {
    case primary
    case secondary
    case text

    func getColor() -> UIColor? {
        switch self {
        case .primary:
            return UIColor.red
        case .secondary:
            return UIColor.blue
        case .text:
            return UIColor.lightGray
        }
    }
}

let button = UIButton()
button.titleLabel?.textColor = AppColors.text.getColor()
*/

// ================================================================

/*
 // Find an issue
func swapTwoInts(_ a: Int, _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoStrings(_ a: String, _ b: String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 5
swapTwoInts(someInt, anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
*/

// ================================================================
// Page 2

/*
 // Code improvements
struct Container {
    var identifier: Int
}

let list = [Container(identifier: 3),
            Container(identifier: 1),
            Container(identifier: 6),
            Container(identifier: 2)]

let orderedList = list.sorted()
print("sorted array: \(orderedList)")
*/

/*
 // Find the issue
class AppStateListener {
    var center = NotificationCenter.default
    var notificationObserver: Any?

    init() {
        notificationObserver = center.addObserver(forName: .UIApplicationWillResignActive,
                                                  object: nil,
                                                  queue: .main) { notification in
                                                    self.logState(notification)
        }
    }

    func logState(_ notification: Notification) {
        print(notification.name)
    }

    deinit {
        center.removeObserver(notificationObserver)
    }
}
*/

