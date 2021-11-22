import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class CarouselContentWidget extends HookWidget {
  const CarouselContentWidget(this.content);
  final String content;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Text(
      content,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 50,
          color: colorScheme.onSurface,
          fontWeight: FontWeight.bold),
    );
  }
}
