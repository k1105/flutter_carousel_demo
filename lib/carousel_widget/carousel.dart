import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:widget_test_1116/carousel_widget/carousel_content_text.dart';
import 'package:widget_test_1116/carousel_widget/carousel_content_image.dart';
import 'package:widget_test_1116/carousel_widget/indicator_widget/indicator.dart';

class CarouselSliderWidget extends HookWidget {
  const CarouselSliderWidget(this.msgList, this.dtype);
  final List<String> msgList;
  final String dtype;

  @override
  Widget build(BuildContext context) {
    final indicator = useState(0);
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      decoration: BoxDecoration(
        color: colorScheme.onPrimary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                enableInfiniteScroll: true,
                height: 300,
                onPageChanged: (index, _) {
                  indicator.value = index;
                }),
            items: msgList.map((msg) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: (() {
                      if (dtype == 'text'){
                        return CarouselContentTextWidget(msg);
                      } else if(dtype=='image') {
                        return CarouselContentImageWidget(msg);
                      } else {
                        return Text('error: dtype is invalid.');
                      }
                    })(),
                  );
                },
              );
            }).toList(),
          ),
          IndicatorWidget(msgList.length, indicator.value),
          // Carousel part
        ],
      ),
    );
  }
}
