import 'package:flutter/material.dart';
import 'package:projeto_novo/presenter/pages/home_page.dart';
import 'package:projeto_novo/themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cubos Challenge',
      theme: theme,
      home: const MyHomePage(),
    );
  }
}
