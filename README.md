UIControlsWithTabbing
=====================

### Automated tabbing between UIControls for iOS

Tabbing between text fields is a no-brainer from HTML, but for native iOS, there is no standard support for doing so. This implementation uses a "category" on UIControl to add support for tabbing between controls, making data entry on iOS easy for the user.

#### To implement this in your project:

1. Copy UIControl+NextControl.h and UIControl+NextControl.m to your project.
2. Assign the "nextControl" properties to your controls in Interface Builder.
3. Assign the delegate of each control to the view controller.
4. Choose a keyboard and set the "Return Key" to say "Next". (optional)
5. Implment the delegate method "- (BOOL)textFieldShouldReturn:(UITextField *)textField" in your view controller.
6. Set the first control to become first responder in "viewWillDisplay". (optional)

#### How to use:

```objectivec
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField transferFirstResponderToNextControl];
    return NO;
}
```
#### Assigning nextControl property in Interface Builder using Storyboards

![alt-text](https://raw.githubusercontent.com/picciano/UIControlsWithTabbing/master/docs/assign-in-storyboard.png "Assigning nextControl property in Interface Builder using Storyboards.")

#### Setting keyboard properties and return key

![alt-text](https://raw.githubusercontent.com/picciano/UIControlsWithTabbing/master/docs/keyboard-and-return-key.png "Setting keyboard properties and return key.")

#### Screen Shot from Demo App

![alt-text](https://raw.githubusercontent.com/picciano/UIControlsWithTabbing/master/docs/demo-app.png "Screen Shot from Demo App")


