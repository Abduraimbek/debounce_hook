<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Debounce API calls or Expensive Operations.

## Features

You can use it for debouncing onChanged of TextField.

## Getting started

To install the package run following command:

```terminal
flutter pub add debounce_hook
```

## Usage

Common useage as follows.

```dart
class MyWidget extends HookWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final debounce = useDebounce<String>(
      // in milliseconds
      debounceDelay: 500,
      callback: (value) {
        // do API call or a expensive computation
      },
    );

    return TextField(
      onChanged: (value) {
        // Common example of using debounce is using `onChanged` of
        // `TextField`.
        debounce.onChanged(value);
      },
    );
  }
}
```
