import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class NumberedIndicatorWidget extends HookWidget {
  const NumberedIndicatorWidget(this.num, this.value);
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
                        width: 45,
                        height: 45,
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 2,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: value == i
                              ? colorScheme.background
                              : Colors.white,
                        ),
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: 25,
                        height: 25,
                        child: Text(
                          '${i + 1}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: colorScheme.onSurface,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
              ],
            ),
          ),
        ],
      );
  }
}