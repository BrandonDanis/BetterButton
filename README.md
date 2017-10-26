# BetterButton
[![Swift](https://img.shields.io/badge/Swift-4-brightgreen.svg)](https://swift.org/blog/swift-4-0-released/)


iOS UIButton framework that facilitates adding beautiful buttons to your projects!  🔴

In my other projects, I always found myself styling buttons in similar fashion. Therefore I decided to create the BetterButton, which inherits from UIButton but has all the styling already done. Which saves me time and looks very good with no extra code no boilerplate code required!

### Goals
My goals with this are to:
* [X] Button can shake  
* [ ] Button can display a loading icon (`button.displayLoadingIcon()`)
* [ ] Button can display a loading bar in the background
* [ ] Add this project to CocoaPods to allow others to use it as well



### What it currently looks like
![Alt Text](https://imgur.com/PqJVJfT.gif)
![Pulse Button](https://imgur.com/mUEzveR.gif)

### How to use
Use it exactly like a normal UIButton, except it has some additional functionality such as shacking and pre-defined color themes. (more to come!)

```swift
let mainButton : BetterButton = {
    let btnFrame = CGRect(x: 50.0, y: 50.0, width: 200.0, height: 40.0)
    let btn = BetterButton(frame: btnFrame, style: .Rounded, color: .Purple)
    btn.setTitle("Enter", for: .normal)
    btn.translatesAutoresizingMaskIntoConstraints = false
    return btn
}()
```
