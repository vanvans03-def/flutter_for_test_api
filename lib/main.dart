import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'pages/home_page.dart';
import 'package:http/http.dart' as http;

final _http = http.Client();

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<void> getDataCategory() async {
    var url = Uri.parse('https://node-api-beige.vercel.app/api/category');
    var res = await _http.get(url);
    print(res.body);
  }

  @override
  Widget build(BuildContext context) {
    getDataCategory();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
