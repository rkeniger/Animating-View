#Animating View
============

##Description
This is a simple project designed to demonstrate the use of the [NSAnimatablePropertyContainer](https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/NSAnimatablePropertyContainer_protocol/Introduction/Introduction.html) protocol in order to simultaneously animate custom properties of an object.

The app consists of a window with a custom view and a button. When you press the button, a "ball" in the view animates to a new position, with the _x_ and _y_ values animating simultaneously.


Note that you can press the **Animate** button as often as you like, the animation proxy will automatically halt the old animation and immediately animate the object to a new location.