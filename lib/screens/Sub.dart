import 'package:flutter/material.dart';
class Sub extends StatefulWidget {
  @override
  _SubState createState() => _SubState();
}

class _SubState extends State<Sub> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  int _sub=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: num1,
            decoration: InputDecoration(
                labelText: "First Number",
                hintText: "First Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: num2,
            decoration: InputDecoration(
                labelText: "Second Number",
                hintText: "Second Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                )
            ),
          ),
          SizedBox(
            height: 30
            ,
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: RaisedButton(
              color: Colors.yellow,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              onPressed: (){
                var getnum1=int.parse(num1.text);
                var getnum2=int.parse(num2.text);
                var result=getnum1+getnum2;
                setState(() {
                  _sub=getnum1-getnum2;
                });
                print(_sub);
              },
              child: Text("Sub"),
            ),
          ),
          Text("",style: TextStyle(fontSize: 30),),
          Text(_sub.toString(),style: TextStyle(fontSize: 30),),
        ],
      ),



    );
  }
}
