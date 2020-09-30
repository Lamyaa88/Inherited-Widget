import 'package:flutter/material.dart';
import 'widget_provider.dart';
import 'home1.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetProvider(
      child: MaterialApp(
        home: Home1(),

      ),
    );
  }
}