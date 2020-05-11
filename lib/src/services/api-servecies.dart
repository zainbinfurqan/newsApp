import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

getDataWithOutParam(url) async {
  try {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse);
    }
  } catch (e) {
    print(e);
  }
}

getDataWithParam(url) async {
  try {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse);
    }
  } catch (e) {
    print(e);
  }
}
