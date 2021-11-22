import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class IndicatorWidget extends HookWidget {
  const IndicatorWidget(this.num, this.value);
  final int num;
  final int value;
  @override
  Widget build(BuildContext context) {
    final indicator = useState(0);
    final colorScheme = Theme.of(context).colorScheme;
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Indicator part
          // ignore: sized_box_for_whitespace
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for (int i = 0; i < num; i++)
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 2,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: value == i
                              ? Color.fromRGBO(0, 0, 0, 0.9)
                              : Color.fromRGBO(0, 0, 0, 0.4),
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ),
        ],
      );
  }
}