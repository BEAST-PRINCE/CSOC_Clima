import 'dart:convert';
import 'package:http/http.dart' as http;

class Network{
  Network(this.URL);

  final String URL;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(URL));
    if(response.statusCode==200) {
      String data = response.body;
      print(data);
      return jsonDecode(data);
    }else{
      print(response.statusCode);
    }
  }
}