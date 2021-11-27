import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class CarouselContentImageWidget extends HookWidget {
  const CarouselContentImageWidget(this.content);
  final String content;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        content,
        fit: BoxFit.cover,
      ),
    );
  }
}
