import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  final Map data;
  PostWidget({required this.data});
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: width / 1.3,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    shadowColor:Color(0xffC31432) ,
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Id: " + widget.data['id'].toString()),
                  )),
                  Card(
                      shadowColor:Color(0xffC31432) ,
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Text("user_id: " + widget.data['user_id'].toString()),
                  )),
                ],
              ),
              Expanded(child: SizedBox()),
              Expanded(
                flex: 10,
                  child: Text(
                widget.data['title'],
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "OpenSans",
                    color: Color(0xffC31432),
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              )),
              // SizedBox(
              //   height: 10,
              // ),
              Expanded(
                flex: 35,
                child: Container(
                  width: double.maxFinite,
                  child: Card(
                    elevation: 2,
                      shadowColor:Color(0xffC31432) ,
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(widget.data['body'],style: TextStyle(
                        fontSize: 12,
                        fontFamily: "OpenSans",),
                      textAlign: TextAlign.center,
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
