# FBAnnotationClusteringSwift

A little class I wrote bcause I needed a "click to select" picker in one of my project ! A bit hacky but conveniant only work with one component in picker, but who would want to have a multi component selectable picker????. Feel free to use ❤️📲🍿

Map clustering is a common enough map feature in modern apps.  When I couldn't find a Swift library, I ended up translating one from Objective-C.  The library of choice was FBAnnotationClustering (FB stands for Filip Bec, not Facebook).  I wanted something that was fast (QuadTree), with a light code base in case I had to figure out and troubleshoot an edge case down the road.

![Simulator Image](https://github.com/ribl/FBAnnotationClusteringSwift/blob/master/GitHubImages/simulatorShot.png)

(left: sample project with a lot of pins in the DC area.  right: ribl screenshot using clusters)

## Installation

####Manually

Copy the following Swift files to your project:

* ClickablePickerView.swift

And that's it ! :)

## Usage
I'm using closure syntax because it's more fancy! change class in your storyboard file an link it or just let clickablePickerView = ClickablePickerView(...) 
clickablePickerView..didSelectAction = { [weak self] in

print("did select row ", self?.clickablePickerView.selectedRow(inComponent: 0) ?? "no self? ?")

}
