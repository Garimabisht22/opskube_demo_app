import 'package:flutter/material.dart';
import 'package:opskube_assignment/display_screen.dart';
import 'package:opskube_assignment/loading_screen.dart';

import 'networking.dart';

void main()  {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Color(0xffC31432)),
          home: LoadingScreen()
      )
  );
}


