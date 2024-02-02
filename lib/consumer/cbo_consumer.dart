import 'dart:convert';

import 'package:cbo_front/models/cbo_model.dart';
import 'package:http/http.dart' as http;

import '../utils/config.dart';

class CboConsumer {
  Future<List<Cbo>> getAll({int page = 0, int size = 10}) async {
    List<String> url = [
      Config.apiUrl,
      Config.cboPath,
      '?page=$page&size=$size'
    ];

    http.Response response = await http.get(Uri.parse(url.join('/')));

    List<Cbo> cbos = [];

    for (var cbo in json.decode(response.body)) {
      cbos.add(Cbo.fromJson(cbo));
    }

    return cbos;
  }

  Future<Cbo> getByCode(String code) async {
    List<String> url = [Config.apiUrl, Config.cboPath, code];

    http.Response response = await http.get(Uri.parse(url.join('/')));

    return Cbo.fromJson(json.decode(response.body));
  }
}
