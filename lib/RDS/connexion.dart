import 'dart:convert';

import 'package:dio/dio.dart';

final dio = Dio();

void getHttp() async {
  Response response;
  response = await dio.get('https://pokeapi.co/api/v2/pokemon/ditto');
  print(response);
}
