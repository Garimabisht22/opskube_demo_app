import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'display_screen.dart';
import 'networking.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  Future<dynamic> getPosts() async {
    NetworkHelper networkHelper = NetworkHelper("https://gorest.co.in/public/v1/posts");
    var Data = await networkHelper.getData();
    print("printing data");
    print(Data['data']);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return displayScreen(postsData: Data['data'],);
    }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: SpinKitWave(
            color: Color(0xffC31432),
            size: 50.0,
            //lineWidth: 30,
          ),
        ),
      ),
    );
  }
}