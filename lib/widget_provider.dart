import 'package:flutter/material.dart';

class WidgetProvider extends InheritedWidget {
  int counter = 0;
  final Widget child;
  WidgetProvider({this.child});

  @override
  bool updateShouldNotify(WidgetProvider oldWidget) {
    return oldWidget.counter != counter;
  }

  static WidgetProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();
}