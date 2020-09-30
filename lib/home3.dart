import 'package:flutter/material.dart';
import 'widget_provider.dart';
import 'home1.dart';
import 'package:inheritedwidget/home1.dart';
class Home3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = WidgetProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('inherited widget'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.forward),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home1()));
            },
          ),
        ],
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (context, StateSetter setState) {
            return Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('tap the counter '),
                Text(
                  '${provider.counter}',
                  style: Theme.of(context).textTheme.display1,
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      provider.counter++;
                    });
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}