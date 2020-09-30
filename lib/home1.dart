import 'package:flutter/material.dart';
import 'widget_provider.dart';
import 'home2.dart';
import 'package:inheritedwidget/home1.dart';
class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = WidgetProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
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
                Container(
                  child: Center(
                    child: Text('First press ( + ) icon  ',style:TextStyle(color: Colors.red,fontSize: 20)),
                  ),

                ),
                SizedBox(height: 40,),
                Container(
                  child: Center(
                    child: Text('and then .... ' ,style:TextStyle(color: Colors.red,fontSize: 20)),

                  ),
                ),
                SizedBox(height: 40,),


                Container(
                  child: Center(
                    child: Text('go to the next page  ',style:TextStyle(color: Colors.red,fontSize: 20)),
                  ),
                ),

                SizedBox(height: 40,),

                Container(
                  child: Center(
                    child: Text('this widget is inherited between bages  ',style:TextStyle(color: Colors.grey,fontSize: 12)),
                  ),
                ),
                SizedBox(height: 40,),

                Text(
                  '${provider.counter}',
                  style:TextStyle(color: Colors.red,fontSize: 70),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.red,
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