import 'package:flutter/material.dart';
import 'package:widget_test_1116/carousel_widget/carousel_with_numbered_indicator.dart';
import 'package:widget_test_1116/carousel_widget/carousel_with_indicator.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Carousel_demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carousel Demo')),
      body: SingleChildScrollView(
        child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const NumberedCarouselSliderWidget(['foo', 'bar', 'baz']),
              const CarouselSliderWidget(['Nakamura', 'Hata', 'Yamagishi']),
            ]),
        ),
      ),
    );
  }
}
