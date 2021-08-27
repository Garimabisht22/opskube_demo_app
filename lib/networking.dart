import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';

class NetworkHelper {
  NetworkHelper(this.urls);
  final String urls;

  Future getData() async {
    var url = Uri.parse(urls);    Response response = await get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
