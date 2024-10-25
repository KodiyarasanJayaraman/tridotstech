import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  final PageController _pageController = PageController();
  final List<Map<String, String>> _newsItems = [
    {
      'title': 'Sugar Cosmetics unveils its 200th brand-owned store',
      'category': 'FASHION | NEWS',
      'image': 'assets/images/store_1.jpg', // Replace with your image asset
      'hashtag': '#fashion'
    },
    {
      'title': 'Another news headline for you to check out',
      'category': 'TECH | NEWS',
      'image': 'assets/images/store_2.jpg', // Replace with your image asset
      'hashtag': '#tech'
    },
    // Add more items here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Slider"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _newsItems.length,
              itemBuilder: (context, index) {
                final item = _newsItems[index];
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image section
                        ClipRRect(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(16)),
                          child: Image.asset(
                            item['image']!,
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Text section
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['category']!,
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                item['title']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                item['hashtag']!,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Page Indicator
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: _newsItems.length,
              effect: WormEffect(
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Colors.redAccent,
                dotColor: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
