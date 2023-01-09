# Description:
This package to create simple and attractive Textfield with your Customization.

![App Screenshot](https://user-images.githubusercontent.com/101794924/211275940-65568007-e0b6-4cdc-a7f5-47719e260983.jpg)

## Getting started:
Add the following to your pubspec.yaml file.

### Install:
```dart
dependencies:
  textfield_shadow: 1.1.0+1
```

### Import the package:
```dart
import 'package:textfield_shadow/textfield_shadow.dart';
```

### Usage:
make a custom textfield inside any widget's child, CustomTextfield will give functionality to add attractive textfield with custom changes according to your need.

```dart
CustomTextfield(
              size: size,
              controller: controller,
              prefixIcon: const Icon(Icons.lock, size: 16, color: Colors.blue),
              hintStr: "Password",
              suffixIcon: const Icon(Icons.remove_red_eye, size: 22, color: Colors.black),
            ),
```
