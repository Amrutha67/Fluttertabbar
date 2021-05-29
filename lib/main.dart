import 'package:flutter/material.dart';
import 'package:flutter_tabbar/screens/Div.dart';
import 'package:flutter_tabbar/screens/Sub.dart';
import 'package:flutter_tabbar/screens/home.dart';
import 'package:flutter_tabbar/screens/mul.dart';

void main()
{
  runApp(Mytab());
}
class Mytab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 4,
          child: Scaffold(

            appBar: AppBar(
              title: Text("Calculator"),
              backgroundColor: Colors.redAccent,
              bottom: TabBar(
                  tabs: [
                      Tab(text: "Add",),
                    Tab(text: "Sub",),
                    Tab(text: "Mul",),
                    Tab(text: "Div",),
                  ]),
            ),
            body: TabBarView(

                children: [
                 Addition(),
                Sub(),
                mul(),
                Div(),
                ]),
          )
      ),
    );
  }
}
