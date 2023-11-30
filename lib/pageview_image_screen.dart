import 'package:flutter/material.dart';
import 'package:flutter_pageview_image_screen_indicator/app_data.dart';
import 'package:flutter_pageview_image_screen_indicator/display_image.dart';
import 'package:flutter_pageview_image_screen_indicator/indicator.dart';

class PageViewImageScreen extends StatefulWidget {
  const PageViewImageScreen({super.key});

  @override
  State<PageViewImageScreen> createState() => _PageViewImageScreenState();
}

class _PageViewImageScreenState extends State<PageViewImageScreen> {
  var selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Ratan Tata'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                },
                itemCount: appData.length,
                itemBuilder: (context, index) {
                  return DisplayImage(appData: appData[index]);
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    appData.length,
                        (index) => Indicator(
                        isActive: selectedPage == index ? true : false))
              ],
            ),
          )
        ],
      ),
    );
  }
}
