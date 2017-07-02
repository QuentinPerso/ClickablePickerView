# ClickablePickerView

A little class I wrote bcause I needed a "click to select" picker in one of my project and didn't find anything on all mother Stack Overflow ! A bit hacky but conveniant only work with one component in picker, but who would want to have a multi component selectable picker????. Feel free to use ❤️📲🍿

## Installation

### Manually

Copy the following Swift files to your project:

* ClickablePickerView.swift

And that's it ! :)

## Usage
I'm using closure syntax because it's more fancy! 
Change class in your storyboard file an link it or just 

```
let clickablePickerView = ClickablePickerView(...) 
clickablePickerView..didSelectAction = { [weak self] in

print("did select row ", self?.clickablePickerView.selectedRow(inComponent: 0) ?? "no self? ?")

}
```
