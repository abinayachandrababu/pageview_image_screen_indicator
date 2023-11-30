import 'package:flutter/material.dart';
import 'package:flutter_pageview_image_screen_indicator/app_data.dart';
import 'package:flutter_pageview_image_screen_indicator/display_image.dart';
import 'package:flutter_pageview_image_screen_indicator/indicator.dart';

class PageViewImageScreenIndicator extends StatefulWidget {
  const PageViewImageScreenIndicator({super.key});

  @override
  State<PageViewImageScreenIndicator> createState() =>
      _PageViewImageScreenIndicatorState();
}

class _PageViewImageScreenIndicatorState
    extends State<PageViewImageScreenIndicator> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ratan Tata'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                    print('---------------> Selected Index: $_selectedIndex');
                  });
                },
                itemCount: appData.length,
                itemBuilder: (context, index) {
                  return DisplayImage(appData: appData[index]);
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(appData.length, (index) =>
                    Indicator(isActive: _selectedIndex == index ? true : false)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
