import 'package:flutter/material.dart';

void main() {
  runApp(const hoemPage());
}

class hoemPage extends StatefulWidget {
  const hoemPage({Key? key}) : super(key: key);

  @override
  State<hoemPage> createState() => _hoemPageState();
}

class _hoemPageState extends State<hoemPage> {
  late String date;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(date),
        ),
        body: GestureDetector(
            onTap: () {
              setState(() {
                date = DateTime.now().toIso8601String();
              });
            },
            child: Container(
              color: Colors.white,
            )),
      ),
    );
  }
}

class Api {
  Future<String> apicall() {
    String? datetime;
    return Future.delayed(
            const Duration(seconds: 2), () => DateTime.now().toIso8601String())
        .then((value) {
      datetime = value;
      return value;
    });
  }
}
