import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.transparent,
      title: Text('Home',style: TextStyle(color: Colors.black),),
      centerTitle: true,
      elevation: 0,
    ),
    body: Center(
      child: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          CircularPercentIndicator(
            radius: 70.0,
            lineWidth: 5.0,
            percent: 0.7,
            center: new Text("100%"),
            progressColor: Colors.pink,circularStrokeCap: CircularStrokeCap.butt,
          ),

          LinearPercentIndicator(
            width: MediaQuery.of(context).size.width - 50,
            animation: true,
            lineHeight: 20.0,
            animationDuration: 2500,
            percent: 0.8,
            center: Text("80.0%"),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.green,
          ),

          CircularPercentIndicator(
            radius: 200.0,
            animation: true,
            animationDuration: 1200,
            lineWidth: 20.0,
            percent: 0.8,
            center: new Text("40 hours", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.grey[400],
            progressColor: Colors.red,
            footer: Text('Put anything 1'),
            fillColor: Colors.blueAccent,
            header: Text('Put anything 2'),
            startAngle: 150,
            reverse: true,

          ),



          LinearPercentIndicator(
            width: 200,
            animation: true,
            animationDuration: 1000,
            lineHeight: 30,
            leading: new Text("left content"),
            trailing: new Text("right content"),
            percent:0.2,
            center: Text("20.0%"),
            linearStrokeCap: LinearStrokeCap.butt,
            progressColor: Colors.red,
          alignment: MainAxisAlignment.center,
            fillColor: Colors.indigoAccent,
            backgroundColor: Colors.blueGrey[200],
            isRTL: false,

          ),


        ],)

      ),
    )

    );
  }
}
