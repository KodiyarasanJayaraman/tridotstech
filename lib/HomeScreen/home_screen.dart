import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tridotstech/HomeScreen/article_screen.dart';
import 'package:tridotstech/HomeScreen/sample.dart';
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
  int selectIndex1 = 0;
  List irPrimeCard = [
    {
      'image': "assets/8retail_company.jpg",
      "title":
          "8 retail companies headed by women, These brands are not just famous ..."
    },
    {
      'image': "assets/market_place_window.png",
      "title": "Joom Marketplace offers a global window for sellers..."
    },
    {
      'image': "assets/red_meat.png",
      "title": "FreshToHome fixing a broken meat market retailing in..."
    }
  ];
  List fashionCard = [
    {
      'image': "assets/fashon_singer.png",
      'heading': 'Fashion',
      'subhead': 'Food',
      "title": "What makes Fila unique is its attitude and...",
      "subtitle":
          'The singer-songwriter has been spotted in the hybrid garment... '
    },
    {
      'image': "assets/sailesh.png",
      'heading': 'Shailesh',
      'subhead': 'Fashion',
      "title": "Fashion brand icons: Shailesh Chaturvedi of Arvind Fashions",
      "subtitle": 'The Gucci loafer has been a signature style for 70 years.'
    },
    {
      'image': "assets/life_style.png",
      'heading': 'Lifestyle',
      'subhead': 'Fashion',
      "title": "Fashion brand icons: Shailesh Chaturvedi of Arvind Fashions",
      "subtitle": 'BTS attended the 2022 Grammy Awards in complementary ...'
    }
  ];
  List content = [
    'Cinema industry welcomes lowering GST rates',
    'Patanjali Ayurved to sell 7% stake in Patanjali',
    'Select Citywalk opens 4 new stores in June',
    'Govt imposes import restrictions on certain gold ',
    'Joom Marketplace offers a global window for sellers',
  ];
  List textButtonText = [
    "Rahul Gandhi In Manipur",
    'Meta',
    'E-commerce',
    'Fashion'
  ];
  List categoryCard = [
    {
      "image": 'assets/citywalk.png',
      "title": "Select Citywalk",
      "subtitle": "Wow! Momo Foods enters Bhopal with Wow! ",
      "beverage": "# Beverage"
    },
    {
      "image": 'assets/food_beverage.png',
      "title": "Food & Beverage",
      "subtitle":
          "KFC opens another outlet in Punjab KFC opens another outlet in Punjab",
      "beverage": "# Beverage"
    },
    {
      "image": 'assets/fnp_city_walk.png',
      "title": "Select Citywalk",
      "subtitle": "FNP (Ferns N Petals) appoints Ashish Goel",
      "beverage": "# Citywalk"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.backgroundWhite,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          child: SvgPicture.asset(
            "assets/drawer_menu.svg",
            fit: BoxFit.none,
          ),
        ),
        centerTitle: true,
        title: Image.asset(
          "assets/indiaretail_logo.png",
          height: 34,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.88),
            child: SvgPicture.asset(
              'assets/searchicon.svg',
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
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
                padding: const EdgeInsets.only(left: 16.43),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ArticleScreen(
                                image: 'assets/hotspot.png',
                                title:
                                    'Luxury hotspots: 5 most expensive\n high streets in the..',
                              )));
                    },
                    child: Container(
                      height: 80.12,
                      width: 272,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3.89)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.46, vertical: 9.69),
                      child: Row(
                        children: [
                          const PhotoContainer(
                              imgUrl: "assets/hotspot.png",
                              cornerRadius: 3.66,
                              height: 60.75,
                              width: 75.73),
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ArticleScreen(
                              title:
                                  'Rahul Gandhi In Manipur: Chopper Ride After Women Protesters Surround Car',
                              image: 'assets/infocus_image.png')));
                    },
                    child: Column(
                      children: [
                        const PhotoContainer(
                          margin: EdgeInsets.symmetric(horizontal: 18),
                          imgUrl: 'assets/infocus_image.png',
                          cornerRadius: 5.0,
                          height: 208.0,
                        ),
                        9.75.height,
                        TextWidget(
                          padding:
                              const EdgeInsets.only(left: 20.8, right: 13.86),
                          text:
                              'Rahul Gandhi In Manipur: Chopper Ride After Women Protesters Surround Car',
                          color: AppColor.textBlack405,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.89,
                        ),
                      ],
                    ),
                  ),
                  15.height,
                  Padding(
                    padding: const EdgeInsets.only(left: 17.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            children:
                                List.generate(categoryCard.length, (index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 18.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => ArticleScreen(
                                            title:
                                                "${categoryCard[index]['title']} " +
                                                    categoryCard[index]
                                                        ['subtitle'],
                                            image: categoryCard[index]
                                                ['image'])));
                                  },
                                  child: Row(
                                    children: [
                                      PhotoContainer(
                                        imgUrl: categoryCard[index]['image'],
                                        cornerRadius: 5.14,
                                        height: 66.36,
                                        width: 106,
                                      ),
                                      15.89.width,
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextWidget(
                                            text: categoryCard[index]['title'],
                                            fontSize: 8.2,
                                            fontWeight: FontWeight.w600,
                                            color: AppColor.primaryRed,
                                          ),
                                          TextWidget(
                                            text: categoryCard[index]
                                                ['subtitle'],
                                            color: AppColor.primaryTextBlack,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                          7.height,
                                          Row(
                                            children: [
                                              TextWidget(
                                                text: categoryCard[index]
                                                    ['beverage'],
                                                color:
                                                    AppColor.primaryTextBlack,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10.1,
                                              ),
                                              6.04.width,
                                              TextWidget(
                                                text: '#reel stories podcast',
                                                color: AppColor.textGreyE4E,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10.1,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                              15.height,
                              if (index + 1 != categoryCard.length)
                                const Divider(
                                  height: 0.56,
                                ),
                              15.height
                            ],
                          );
                        })),
                        35.height,
                        TextWidget(
                          text: 'Latest News',
                          color: AppColor.primaryTextBlack,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        10.height,
                        IndicatorWidget(
                          length: 3,
                          selectIndex: selectIndex,
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
                              itemCount: 3,
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
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: 192.55,
                                          decoration: const BoxDecoration(
                                              color: Colors.green,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/latest_news.png'),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  BorderRadius.vertical(
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
                  const AdvertisementWidget(
                    imgUrl: "assets/advertisement.png",
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
                              child: const TextWidget(
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
                          padding: const EdgeInsets.only(left: 19.0, right: 20),
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
                                    borderRadius: BorderRadius.circular(3.89)),
                                // padding: EdgeInsets.symmetric(
                                //     horizontal: 4.46, vertical: 9.69),
                                child: Row(
                                  children: [
                                    PhotoContainer(
                                        imgUrl: irPrimeCard[index]['image'],
                                        cornerRadius: 8,
                                        height: 74.0,
                                        width: 74.0),
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
                  IndicatorWidget(
                    length: 3,
                    selectIndex: selectIndex1,
                    padding: EdgeInsets.only(left: 17.5),
                  ),
                  15.height,
                  SizedBox(
                    height: 281.7,
                    child: PageView.builder(
                        controller: pageController,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (v) {
                          setState(() {
                            selectIndex1 = v;
                          });
                        },
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                            child: Container(
                                margin:
                                    const EdgeInsets.only(right: 15, left: 17),
                                padding: const EdgeInsets.only(
                                    left: 12.25, bottom: 11),
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/web_specials.png',
                                        ),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(8.89)),
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
                                  text: content[index],
                                  color: AppColor.primaryTextBlack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          16.53.height,
                          if (index + 1 != content.length)
                            Divider(
                              height: 0.87,
                              color: AppColor.latestNewsCardColor,
                            ),
                          18.14.height,
                        ],
                      );
                    })),
                  ),
                  17.height,

                  ///fashion
                  SizedBox(
                    height: 173,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        padding: EdgeInsets.only(left: 17, right: 10),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 173,
                            width: 244,
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.5)),
                            child: Column(
                              children: [
                                Container(
                                  height: 131,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.5)),
                                  child: Stack(
                                    children: [
                                      PageView.builder(
                                          controller: pageController,
                                          scrollDirection: Axis.horizontal,
                                          onPageChanged: (v) {
                                            setState(() {
                                              selectIndex = v;
                                            });
                                          },
                                          itemCount: 5,
                                          itemBuilder: (BuildContext context,
                                                  int index) =>
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.5),
                                                    image: const DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: AssetImage(
                                                            "assets/play_main.png"))),
                                                padding: const EdgeInsets.only(
                                                    bottom: 1),
                                                alignment:
                                                    Alignment.bottomCenter,
                                              )),
                                      Positioned(
                                        bottom: 3,
                                        left: 35,
                                        child: IndicatorWidget(
                                          length: 3,
                                          selectIndex: selectIndex,
                                          indicateColor: Colors.green.shade800
                                              .withOpacity(.5),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 7,
                                        left: 10,
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: SvgPicture.asset(
                                              'assets/play_code.svg'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                12.height,
                                const Expanded(
                                  child: TextWidget(
                                    maxlines: 2,
                                    text:
                                        'Fashion brand icons: Shailesh Chaturvedi of Arvind Fashions',
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  35.height,

                  ///Trending
                  TextWidget(
                    padding: EdgeInsets.only(left: 17.5),
                    text: 'Trending',
                    color: AppColor.primaryTextBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  10.height,
                  IndicatorWidget(
                    length: 3,
                    selectIndex: selectIndex1,
                    padding: EdgeInsets.only(left: 17.5),
                  ),
                  15.height,
                  SizedBox(
                    height: 34,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 17),
                      separatorBuilder: (BuildContext context, int index) {
                        return 11.28.width;
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: textButtonText.length,
                      itemBuilder: (BuildContext context, index) {
                        return TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.2)),
                              side: BorderSide(
                                color: HexColor('#D9D9D9'),
                                width: .46,
                                style: BorderStyle.solid,
                              ),
                            )),
                            child: TextWidget(
                              text: textButtonText[index],
                              fontSize: 11.30,
                              fontWeight: FontWeight.w500,
                              color: HexColor('#666666'),
                            ));
                      },
                    ),
                  ),
                  35.height,
                  TextWidget(
                    padding: EdgeInsets.only(left: 17.5),
                    text: 'Leaders Ink',
                    color: AppColor.primaryTextBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  10.height,
                  IndicatorWidget(
                    length: 3,
                    selectIndex: selectIndex1,
                    padding: EdgeInsets.only(left: 17.5),
                  ),
                  15.height,
                  SizedBox(
                    height: 281.7,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        padding: const EdgeInsets.symmetric(horizontal: 17),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ArticleScreen(
                                      title:
                                          'Unwrapping the Archies’ reinvention plan',
                                      image: 'assets/latest_news.png')));
                            },
                            child: Container(
                              height: 281,
                              width: 240.14,
                              margin: const EdgeInsets.only(right: 40),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColor.latestNewsCardColor,
                                      width: .89),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.89)),
                              alignment: Alignment.topCenter,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 150,
                                      decoration: const BoxDecoration(
                                          color: Colors.green,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/latest_news.png'),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(8.89)))),
                                  12.height,
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          child: Image.asset(
                                              'assets/review_lady.png'),
                                        ),
                                        Expanded(
                                          child: TextWidget(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.91),
                                            text:
                                                'Unwrapping the Archies’ reinvention plan',
                                            color: AppColor.textColor838,
                                            fontSize: 13.98,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  10.09.height,
                                  Expanded(
                                    child: TextWidget(
                                      maxlines: 2,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 9),
                                      text:
                                          'From a total of around 522 Apple stores across the world..',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: HexColor('#666666'),
                                    ),
                                  ),
                                  3.height,
                                  TextWidget(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 9),
                                    text: 'Arundhati Roy',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: HexColor('#000000'),
                                  ),
                                  13.height
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  15.height,
                  Center(
                      child: IndicatorWidget(
                    length: 3,
                    selectIndex: selectIndex1,
                    padding: EdgeInsets.only(left: 17.5),
                  )),
                  25.height,
                  SizedBox(
                    height: 80,
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return 18.73.width;
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      padding: const EdgeInsets.only(left: 16.43),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 80.12,
                          width: 272,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3.89)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4.46, vertical: 9.69),
                          child: Row(
                            children: [
                              const PhotoContainer(
                                  imgUrl: "assets/fashon.png",
                                  cornerRadius: 3.66,
                                  height: 60.75,
                                  width: 75.73),
                              7.31.width,
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  12.height,
                                  TextWidget(
                                    text:
                                        'Human touchpoint is extremely important for us,',
                                    color: AppColor.primaryTextBlack,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.53,

                                    // maxlines: 3,
                                  ),
                                  TextWidget(
                                    text: 'Fashion',
                                    fontSize: 9.5,
                                    color: AppColor.primaryRed,
                                  )
                                ],
                              ))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  35.height,
                  ColoredBox(
                    color: Colors.black,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              16.height,
                              const TextWidget(
                                text: 'IR Video Wall',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              10.height,
                              IndicatorWidget(
                                length: 3,
                                selectIndex: selectIndex,
                              ),
                            ],
                          ),
                        ),
                        15.height,
                        SizedBox(
                          height: 231,
                          child: PageView.builder(
                              controller: pageController,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (v) {
                                setState(() {
                                  selectIndex = v;
                                });
                              },
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => const ArticleScreen(
                                            title:
                                                "Unwrapping the Archies’ reinvention plan",
                                            image: 'assets/jwell.png')));
                                  },
                                  child: Container(
                                    width: 231,
                                    margin:
                                        EdgeInsets.only(left: 22, right: 19),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(8.89)),
                                    // alignment: Alignment.topCenter,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: 183,
                                            decoration: const BoxDecoration(
                                                color: Colors.green,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/jwell.png'),
                                                    fit: BoxFit.cover),
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            8.89)))),
                                        12.85.height,
                                        const TextWidget(
                                          maxlines: 2,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.91),
                                          text:
                                              'Unwrapping the Archies’ reinvention plan',
                                          color: Colors.white,
                                          fontSize: 13.98,
                                          fontWeight: FontWeight.w400,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  15.height,
                  const AdvertisementWidget(
                    imgUrl: "assets/watch.png",
                  ),
                  35.height,
                  TextWidget(
                    padding: const EdgeInsets.only(left: 17),
                    text: 'Fashion & Lifestyle',
                    color: AppColor.primaryTextBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  10.height,
                  IndicatorWidget(
                    padding: const EdgeInsets.only(left: 17.5),
                    length: 3,
                    selectIndex: selectIndex,
                  ),
                  15.height,
                  Column(
                      children: List.generate(fashionCard.length, (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ArticleScreen(
                                title: fashionCard[index]['subtitle'],
                                image: fashionCard[index]['image'])));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            right: 17.16, bottom: 27, left: 17),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                PhotoContainer(
                                    imgUrl: fashionCard[index]['image'],
                                    cornerRadius: 13,
                                    height: 123.0,
                                    width: 145.7),
                                Positioned(
                                    left: 10,
                                    bottom: 7,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset('assets/book.svg'),
                                        5.width,
                                        const TextWidget(
                                          text: '1 min',
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                        )
                                      ],
                                    ))
                              ],
                            ),
                            15.89.width,
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                12.height,
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                    text: "${fashionCard[index]['heading']}",
                                    style: GoogleFonts.roboto(
                                        color: HexColor('#E21B22'),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  TextSpan(
                                    text: " | ",
                                    style: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  TextSpan(
                                      text: "${fashionCard[index]['subhead']}",
                                      style: GoogleFonts.roboto(
                                          color: HexColor('#999999'),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 11)),
                                ])),
                                10.height,
                                TextWidget(
                                  maxlines: 2,
                                  text: fashionCard[index]['title'],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.primaryTextBlack,
                                ),
                                7.height,
                                TextWidget(
                                  maxlines: 2,
                                  text: fashionCard[index]['subtitle'],
                                  color: HexColor('#666666'),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                ),
                                7.height,
                                TextWidget(
                                  text: '#Fashion',
                                  color: AppColor.primaryTextBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.1,
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),
                    );
                  })),
                  30.height
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
