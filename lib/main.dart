import 'package:flutter/material.dart';
import 'package:flutter_pageview_image_screen_indicator/pageview_image_screen.dart';
import 'package:flutter_pageview_image_screen_indicator/pageview_image_screen_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: PageViewImageScreen(),
      home: PageViewImageScreenIndicator(),
    );
  }
}

