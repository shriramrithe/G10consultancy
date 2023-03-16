import 'dart:convert';
import 'dart:developer';
import 'package:g_consultancy/modelClass.dart';
import 'package:http/http.dart' as http;

class Repository {
  Future<Itemdetali> fetchdata() async {
    final request = await http.get(Uri.parse("https://dummyjson.com/products"));
    Itemdetali result = Itemdetali.fromJson(json.decode(request.toString()));
    // log(result.toString());
    return result;
  }
}
