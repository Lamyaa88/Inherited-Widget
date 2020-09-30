import 'package:flutter/material.dart';
import 'Widget_provider.dart';
import 'home3.dart';
class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = WidgetProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('inherited widget' ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.forward),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home3()));
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
                Center(child: Center(
                  child: Text(''),
                ),),
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
                ),
                IconButton(
                  icon: Icon(
                    Icons.remove,
                    size: 50,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      provider.counter--;
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