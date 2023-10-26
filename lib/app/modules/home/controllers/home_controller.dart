import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:latihan/app/data/todos.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  RxList <Welcome> well = RxList<Welcome>([]);

  static const String baseUrl = "https://jsonplaceholder.typicode.com/todos/5";

  Future<dynamic> fetchData() async {
    final Uri url = Uri.parse(baseUrl);

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = Welcome.fromJson(jsonDecode(response.body));
        well.add(data);
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (e) {
      throw Exception('Request Error: $e');
    }
  }

}
