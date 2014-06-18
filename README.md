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
    [textField transferFirstReponderToNextControl];
    return NO;
}
```
