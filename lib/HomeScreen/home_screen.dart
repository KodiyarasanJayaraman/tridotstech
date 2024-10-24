import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tridotstech/Widgets/colors.dart';
import 'package:tridotstech/Widgets/commons.dart';
import 'package:tridotstech/Widgets/text_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  PageController pageController = PageController();
  int selectIndex = 0;
  List latestNewsCard = [
    "assets/Images/latest_news.png",
    "assets/Images/latest_news.png",
    "assets/Images/latest_news.png",
  ];
  List irPrimeCard = [
    {
      'image': "assets/Images/8retail_company.jpg",
      "title":
          "8 retail companies headed by women, These brands are not just famous ..."
    },
    {
      'image': "assets/Images/market_place_window.png",
      "title": "Joom Marketplace offers a global window for sellers..."
    },
    {
      'image': "assets/Images/red_meat.png",
      "title": "FreshToHome fixing a broken meat market retailing in..."
    }
  ];
  List content = [
    'Cinema industry welcomes lowering GST rates',
    'Cinema industry welcomes lowering GST rates',
    'Cinema industry welcomes lowering GST rates',
    'Cinema industry welcomes lowering GST rates',
    'Cinema industry welcomes lowering GST rates',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.backgroundWhite,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: SvgPicture.asset(
          "assets/Images/SvgIcons/drawer_menu.svg",
          fit: BoxFit.none,
        ),
        centerTitle: true,
        title: Image.asset(
          "assets/Images/indiaretail-logo.png",
          height: 34,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.88),
            child: SvgPicture.asset(
              'assets/Images/SvgIcons/searchicon.svg',
            ),
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              11.65.height,
              SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return 18.73.width;
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  padding: EdgeInsets.only(left: 16.43),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 80.12,
                      width: 272,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3.89)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 4.46, vertical: 9.69),
                      child: Row(
                        children: [
                          photoContainer(
                              "assets/Images/image 57.png", 3.66, 60.75, 75.73),
                          7.31.width,
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              12.height,
                              TextWidget(
                                text: 'Hotspots',
                                fontSize: 9.5,
                                color: AppColor.primaryRed,
                              ),
                              TextWidget(
                                text:
                                    'Luxury hotspots: 5 most expensive\n high streets in the..',
                                color: AppColor.primaryTextBlack,
                                fontWeight: FontWeight.w400,
                                fontSize: 10.53,

                                // maxlines: 3,
                              ),
                            ],
                          ))
                        ],
                      ),
                    );
                  },
                ),
              ),
              9.height,
              ColoredBox(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    14.93.height,
                    Padding(
                      padding: EdgeInsets.only(left: 18.85),
                      child: photoContainer(
                          'assets/Images/infocus_image.png', 5.0, 208.0, 360.0),
                    ),
                    9.75.height,
                    TextWidget(
                      padding: const EdgeInsets.only(left: 20.8, right: 13.86),
                      text:
                          'Rahul Gandhi In Manipur: Chopper Ride After Women Protesters Surround Car',
                      color: AppColor.textBlack405,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.89,
                    ),
                    15.height,
                    Padding(
                      padding: const EdgeInsets.only(left: 17.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          selectCard(
                              'assets/Images/citywalk.png',
                              "Select Citywalk",
                              "Wow! Momo Foods enters Bhopal with Wow! ",
                              "# Beverage"),
                          15.height,
                          const Divider(
                            height: 0.56,
                          ),
                          selectCard(
                              'assets/Images/food_beverage.png',
                              "Food & Beverage",
                              "KFC opens another outlet in Punjab KFC opens another outlet in Punjab",
                              "# Beverage"),
                          15.height,
                          const Divider(
                            height: 0.56,
                          ),
                          selectCard(
                              'assets/Images/fnp_city_walk.png',
                              "Select Citywalk",
                              "FNP (Ferns N Petals) appoints Ashish Goel",
                              "# Beverage"),
                          35.height,
                          TextWidget(
                            text: 'Latest News',
                            color: AppColor.primaryTextBlack,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          10.height,
                          Row(
                            children: [
                              for (var i = 0; i < latestNewsCard.length; i++)
                                Container(
                                  height: 5,
                                  width: i == selectIndex ? 15.19 : 5,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: i == selectIndex
                                          ? AppColor.indicatorColor
                                          : Colors.grey.shade300,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5.64))),
                                ),
                            ],
                          ),
                          15.height,
                          SizedBox(
                            height: 281.7,
                            child: PageView.builder(
                                controller: pageController,
                                scrollDirection: Axis.horizontal,
                                onPageChanged: (v) {
                                  setState(() {
                                    selectIndex = v;
                                  });
                                },
                                itemCount: latestNewsCard.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    width: 270.14,
                                    margin: EdgeInsets.only(right: 40),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColor.latestNewsCardColor,
                                            width: .89),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(8.89)),
                                    // alignment: Alignment.topCenter,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: 192.55,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        latestNewsCard[index]),
                                                    fit: BoxFit.cover),
                                                borderRadius:
                                                    const BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            8.89)))),
                                        12.85.height,
                                        TextWidget(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.91),
                                          text:
                                              'Unwrapping the Archies’ reinvention plan',
                                          color: AppColor.textColor838,
                                          fontSize: 13.98,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        11.71.height,
                                        const TextWidget(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.91),
                                          text: '#Lifestyle',
                                          color: Colors.black,
                                          fontSize: 10.55,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          15.height,
                        ],
                      ),
                    ),
                    Divider(
                      height: .76,
                      color: HexColor('#DCDCDC'),
                    ),
                    15.height,
                    const TextWidget(
                      maxlines: 2,
                      padding: EdgeInsets.only(left: 33.14, right: 27.16),
                      text:
                          'Croma opens 58 outlets in 6, Croma retails more than 16,000',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    10.height,
                    TextWidget(
                      maxlines: 2,
                      padding: EdgeInsets.only(left: 33.14, right: 27.16),
                      text:
                          'These companies created a lot of hype when they listed on the...',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: HexColor('#666666'),
                    ),
                    15.height,
                    Divider(
                      height: .76,
                      color: HexColor('#DCDCDC'),
                    ),
                    15.height,
                    const TextWidget(
                      maxlines: 2,
                      padding: EdgeInsets.only(left: 33.14, right: 27.16),
                      text: 'Select Citywalk opens 4 new stores in June',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    10.height,
                    TextWidget(
                      maxlines: 2,
                      padding: EdgeInsets.only(left: 33.14, right: 27.16),
                      text:
                          'These companies created a lot of hype when they listed on the...',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: HexColor('#666666'),
                    ),
                    35.height,
                    Center(
                      child: TextWidget(
                        text: '- Advertisement -',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: HexColor('#222222'),
                      ),
                    ),
                    5.height,
                    Center(
                        child: Container(
                      height: 100,
                      width: 320,
                      color: Colors.green,
                    )
                        // photoContainer(
                        //     "assets/Images/advertisement.png", 0, 100, 320),
                        ),
                    35.height,
                    ColoredBox(
                      color: AppColor.irPrimeColor,
                      child: Column(
                        children: [
                          13.1.height,
                          Row(
                            children: [
                              Container(
                                height: 28.46,
                                width: 28.46,
                                decoration: BoxDecoration(
                                    color: HexColor('#DD1628'),
                                    borderRadius: BorderRadius.circular(5.34)),
                                margin: EdgeInsets.only(left: 34.29),
                                alignment: Alignment.center,
                                child: TextWidget(
                                  text: 'IR',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.01,
                                ),
                              ),
                              6.64.width,
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                    text: 'IR Prime',
                                    fontSize: 12.81,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.black222222,
                                  ),
                                  TextWidget(
                                    text: 'Top 3  stories of the day',
                                    fontSize: 11.53,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.black222222,
                                  ),
                                ],
                              )),
                              TextWidget(
                                padding: EdgeInsets.only(right: 20),
                                text: 'View all',
                                fontWeight: FontWeight.w600,
                                fontSize: 9,
                                color: HexColor('#686868'),
                              )
                            ],
                          ),
                          13.87.height,
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 19.0, right: 20),
                            child: Divider(
                              color: HexColor('#E5E7EB'),
                            ),
                          ),
                          SizedBox(
                            height: 72 * 3 + 39,
                            child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return 13.height;
                              },
                              itemCount: irPrimeCard.length,
                              padding:
                                  const EdgeInsets.only(left: 27.84, right: 24),
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: 72,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(3.89)),
                                  // padding: EdgeInsets.symmetric(
                                  //     horizontal: 4.46, vertical: 9.69),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 74,
                                        width: 74,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                      // photoContainer(
                                      //     irPrimeCard[index]['image'],
                                      //     8,
                                      //     74,
                                      //     74),
                                      16.width,
                                      Expanded(
                                          child: TextWidget(
                                        text: irPrimeCard[index]['title'],
                                        color: AppColor.primaryTextBlack,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10.53,
                                        maxlines: 2,
                                      ))
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          10.height
                        ],
                      ),
                    ),
                    35.height,
                    TextWidget(
                      padding: EdgeInsets.only(left: 17.5),
                      text: 'Web Specials',
                      color: AppColor.primaryTextBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    10.height,
                    Padding(
                      padding: const EdgeInsets.only(left: 17.5),
                      child: Row(
                        children: [
                          for (var i = 0; i < latestNewsCard.length; i++)
                            Container(
                              height: 5,
                              width: i == selectIndex ? 15.19 : 5,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color: i == selectIndex
                                      ? AppColor.indicatorColor
                                      : Colors.grey.shade300,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.64))),
                            ),
                        ],
                      ),
                    ),
                    15.height,
                    SizedBox(
                      height: 281.7,
                      child: PageView.builder(
                          controller: pageController,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (v) {
                            setState(() {
                              selectIndex = v;
                            });
                          },
                          itemCount: latestNewsCard.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Center(
                              child: Container(
                                  margin: const EdgeInsets.only(
                                      right: 15, left: 17),
                                  padding: const EdgeInsets.only(
                                      left: 12.25, bottom: 11),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                  alignment: Alignment.bottomLeft,
                                  child: const TextWidget(
                                    text:
                                        'Myntra records close to 100% growth in premium ethnicwear',
                                    color: Colors.white,
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w500,
                                  )),
                            );
                          }),
                    ),
                    17.height,
                    Padding(
                      padding: const EdgeInsets.only(right: 27.56, left: 18.96),
                      child: Column(
                          children: List.generate(content.length, (index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 5.72,
                                  width: 5.72,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 0.87,
                                          color: AppColor.primaryRed)),
                                ),
                                7.16.width,
                                Expanded(
                                  child: TextWidget(
                                    maxlines: 1,
                                    text:
                                        'Cinema industry welcomes lowering GST rates',
                                    color: AppColor.primaryTextBlack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                            16.53.height,
                            (content.length != 5)
                                ? Divider(
                                    height: 0.87,
                                    color: AppColor.latestNewsCardColor,
                                  )
                                : const SizedBox.shrink(),
                            18.14.height,
                          ],
                        );
                      })),
                    )
                  ],
                ),
              ),
              40.height
            ],
          ),
        ),
      ),
    );
  }
}
