# native_scroll

A highly experimental solution for making scrolling better on Flutter Web.

This will probably break in many situations.

Highly untested. You have been warned. It might call your mother a hamster and
fart in your general direction. Or just break scrolling on your app.

It might especially break on dynamic lists that dynamically change their scroll
height.

Example here: https://native-scroll.web.app

## Okay, cool, how do I use it?

Wrap any scrollable widget in a `NativeScrollBuilder`.

Pass the `ScrollController` to the scrollable widget, like this:

```dart
NativeScrollBuilder(
    builder: (BuildContext context, ScrollController controller) {
    return ListView.builder(
        controller: controller,
        itemCount: 100,
        itemBuilder: (context, _) {
            return Text('I scroll nicely on the web');
        },
    ),
);
```