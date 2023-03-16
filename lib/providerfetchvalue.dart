import 'package:flutter/material.dart';
import 'package:g_consultancy/modelClass.dart';
import 'package:g_consultancy/repository.dart';

class FliterProvider extends ChangeNotifier {
  final Repository _repository = Repository();

  List<Itemdetali> itemdetailslist = [];
  fetchdetails() async {
    var data = await _repository.fetchdata();
    print(data);
  }
}
