import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opskube_assignment/post_widget.dart';

class displayScreen extends StatefulWidget {
  final List postsData;
  displayScreen({required this.postsData});

  @override
  _displayScreenState createState() => _displayScreenState();
}

class _displayScreenState extends State<displayScreen> {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Post Screen")),
          backgroundColor: Color(0xffC31432),
        ),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: widget.postsData.length,
            itemBuilder: (BuildContext context, int index) {
              return PostWidget(data: widget.postsData[index],);
            }),
      ),
    );
  }
}
