import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tridotstech/Widgets/colors.dart';
import 'package:tridotstech/Widgets/commons.dart';
import 'package:tridotstech/Widgets/text_widget.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key, required this.title, required this.image});
  final String? title;
  final String image;
  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen>
    with SingleTickerProviderStateMixin {
  PageController pageController = PageController();
  int selectedIndex = 0;
  List fashionCard = [
    {
      'image': "assets/fashon_singer.png",
      'heading': 'Fashion',
      'subhead': 'NEWS',
      "title": "What makes Fila unique is its attitude and...",
      "subtitle": 'Sugar Cosmetics unveils its 200th brand-owned store'
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
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            "assets/arrow_back.svg",
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
            13.height,
            const AdvertisementWidget(imgUrl: 'assets/advertisement.png'),
            18.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Big Grid
                  Row(
                    children: [
                      TextWidget(
                        padding: const EdgeInsets.only(
                          right: 14,
                        ),
                        text: 'Big Grid',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: HexColor('#E21B22'),
                      ),
                      const ReviewWidget(
                          iconUrl: 'assets/views_icon.svg', title: '419 views'),
                      TextWidget(
                        text: '  •  ',
                        fontWeight: FontWeight.w500,
                        fontSize: 9,
                        color: HexColor('#E21B22'),
                      ),
                      const ReviewWidget(
                          iconUrl: 'assets/share_icon.svg',
                          title: '427 shares'),
                      TextWidget(
                        text: '  •  ',
                        fontWeight: FontWeight.w500,
                        fontSize: 9,
                        color: HexColor('#E21B22'),
                      ),
                      const ReviewWidget(
                          iconUrl: 'assets/timer_icon.svg',
                          title: '2 minute read'),
                    ],
                  ),
                  7.height,

                  ///title
                  TextWidget(
                    text: widget.title,
                    color: AppColor.black00000,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  8.height,

                  ///Barkha dutt
                  Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset('assets/barkha_dutt.png'),
                      ),
                      7.width,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'Barkha Dutt',
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: AppColor.black00000,
                            ),
                            TextWidget(
                              text: '#818181',
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: HexColor('#818181'),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/share_icon.svg',
                        height: 10,
                      ),
                      10.width,
                      SvgPicture.asset(
                        'assets/more_vert.svg',
                        height: 10,
                      )
                    ],
                  ),
                  12.height,

                  ///photo
                  Center(
                    child: ColoredBox(
                      color: Colors.transparent,
                      child: Image.asset(widget.image),
                    ),
                  ),
                  20.height,

                  ///Description
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                          fontSize: 13.0,
                          color: AppColor.black00000,
                          fontWeight: FontWeight.w400), // Base text style
                      children: const [
                        TextSpan(
                          text:
                              "The first shopping centre by the name Lykli is slated to open at "
                              "Gurugram in 2025 New Delhi: Ingka Group, the parent company of Ikea, "
                              "on Wednesday announced that it plans to brand its "
                              "upcoming shopping centres in the country as Lykli.\n\n",
                        ),
                        TextSpan(
                          text:
                              "New Delhi: Ingka Group, the parent company of Ikea,"
                              " on Wednesday announced that it plans to brand its"
                              " upcoming shopping centres in the country as Lykli.\n\n",
                        ),
                        TextSpan(
                          text:
                              "Ikea’s sister concern, Ingka Centres, is planning to build"
                              " a slew of malls in India to tap the growing market for "
                              "modern retailing in India amid an explosion of global brands "
                              "heading to India in recent years.",
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify, // Optional alignment
                  ),
                  25.height,
                  TextWidget(
                    text: 'must read',
                    color: AppColor.primaryTextBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  10.height,
                  const IndicatorWidget(
                    length: 1,
                    selectIndex: 0,
                  ),
                  15.height,

                  ///Must Read
                  SizedBox(
                    height: 105,
                    child: PageView.builder(
                        controller: pageController,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (v) {
                          setState(() {
                            selectedIndex = v;
                          });
                        },
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 270.14,
                            padding: const EdgeInsets.only(
                                left: 17, top: 16, bottom: 16, right: 11),
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor.latestNewsCardColor,
                                    width: .89),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(3.22)),
                            child: Row(
                              children: [
                                PhotoContainer(
                                    imgUrl: fashionCard[index]['image'],
                                    cornerRadius: 3.22,
                                    height: 72.0,
                                    width: 105.7),
                                13.width,
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text.rich(TextSpan(children: [
                                      TextSpan(
                                        text:
                                            "${fashionCard[index]['heading']}",
                                        style: GoogleFonts.roboto(
                                            color: HexColor('#E21B22'),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      TextSpan(
                                        text: " | ",
                                        style: GoogleFonts.roboto(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      TextSpan(
                                          text:
                                              "${fashionCard[index]['subhead']}",
                                          style: GoogleFonts.roboto(
                                              color: HexColor('#999999'),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10)),
                                    ])),
                                    3.height,
                                    Expanded(
                                      child: TextWidget(
                                        maxlines: 2,
                                        text: fashionCard[index]['subtitle'],
                                        color: AppColor.primaryTextBlack,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                    5.height,
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
                          );
                        }),
                  ),
                  9.height,
                  Center(
                    child: IndicatorWidget(
                      length: fashionCard.length,
                      selectIndex: selectedIndex,
                    ),
                  ),
                  25.height,
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                          fontSize: 13.0,
                          color: AppColor.black00000,
                          fontWeight: FontWeight.w400), // Base text style
                      children: const [
                        TextSpan(
                          text:
                              "Ingka Centres is the commercial real estate arm of"
                              " Ingka Group, the Swedish giant that runs Ikea furniture chain"
                              " globally and it will be the newest entrant in the Indian shopping "
                              "centre industry. Anticipated to surge at an annual growth rate of"
                              " 29%, the retail sales within the shopping malls of the top eight"
                              " cities are poised to reach an impressive \$39 billion by 2027.\n\n",
                        ),
                        TextSpan(
                          text:
                              "Earlier this year, Ingka Centres announced that PVR Ltd."
                              " became its first tenant for the mall, which the company "
                              "terms as a ‘meeting place’. PVR will operate a nine-screen "
                              "movie multiplex at Lykli.",
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify, // Optional alignment
                  ),
                  20.height,
                  const AdvertisementWidget(
                    imgUrl: 'assets/samandha.png',
                    height: 280,
                  ),
                  20.height,
                  TextWidget(
                      text:
                          'Ikea’s sister concern, Ingka Centres, is planning to'
                          ' build a slew of malls in India to tap the growing market for '
                          'modern retailing in India amid an explosion of global brands '
                          'heading to India in recent years.',
                      fontSize: 13.0,
                      color: AppColor.black00000,
                      fontWeight: FontWeight.w400),
                  25.height,
                  TextWidget(
                    text: 'Comments',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColor.primaryTextBlack,
                  ),
                  12.height,

                  ///Comments
                  Stack(
                    children: [
                      Container(
                        // width: double.infinity,
                        padding:
                            EdgeInsets.only(left: 52, top: 10.5, bottom: 10),
                        decoration: BoxDecoration(
                            color: HexColor('#F8F8F8'),
                            borderRadius: BorderRadius.circular(4.29)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "samantha",
                                style: GoogleFonts.roboto(
                                    color: AppColor.black00000,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: "  •  ",
                                style: GoogleFonts.roboto(
                                    color: HexColor('#E21B22'),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                  text: "2 hours ago",
                                  style: GoogleFonts.roboto(
                                      color: HexColor('#999999'),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10)),
                            ])),
                            11.height,
                            TextWidget(
                              text:
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                              color: HexColor('#050505'),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                            10.height,
                            Row(
                              children: [
                                SvgPicture.asset('assets/thumsup.svg'),
                                12.width,
                                SvgPicture.asset('assets/thums_down.svg'),
                                Expanded(
                                  child: TextWidget(
                                    text: '    Share  Reply',
                                    color: HexColor('#8F8F8F'),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(
                                  Icons.more_vert_outlined,
                                  color: HexColor('#505F79'),
                                  size: 12,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 9,
                        left: 4.5,
                        child: CircleAvatar(
                          child: Image.asset('assets/samandha3.png'),
                        ),
                      ),
                    ],
                  ),
                  15.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Buttons(
                        onPressed: () {},
                        label: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              text: 'Read all comments',
                              color: Colors.white,
                              fontSize: 11,
                            ),
                            Icon(
                              Icons.keyboard_arrow_up_outlined,
                              color: Colors.white,
                              size: 10,
                            )
                          ],
                        ),
                      ),
                      15.width,
                      Buttons(
                        onPressed: () {},
                        backgroundColor: Colors.transparent,
                        border: Border.all(color: HexColor('#EEEEEE')),
                        label: const TextWidget(
                          text: 'Post a comment',
                        ),
                      ),
                    ],
                  ),
                  18.height,
                  Divider(),
                  23.height,
                  TextWidget(
                    text: 'Latest News',
                    color: AppColor.primaryTextBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  10.height,
                  const IndicatorWidget(
                    length: 1,
                    selectIndex: 0,
                  ),
                  15.height,
                  SizedBox(
                    height: 300.7,
                    child: PageView.builder(
                        controller: pageController,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (v) {
                          setState(() {
                            selectedIndex = v;
                          });
                        },
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 260.14,
                            margin: EdgeInsets.only(right: 40),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor.latestNewsCardColor,
                                    width: .89),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.89)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    PhotoContainer(
                                      imgUrl: 'assets/latest_news.png',
                                      height: 212,
                                      cornerRadius: 8,
                                    ),
                                    Positioned(
                                        left: 10,
                                        bottom: 7,
                                        child: SvgPicture.asset(
                                            'assets/play_code.svg')),
                                  ],
                                ),
                                12.85.height,
                                TextWidget(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.91),
                                  text:
                                      'Wow! Momo Foods enters Bhopal \nwith Wow! Momo, Wow China',
                                  color: AppColor.textColor838,
                                  fontSize: 13.98,
                                  fontWeight: FontWeight.w400,
                                ),
                                11.71.height,
                                const TextWidget(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.91),
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
                  Center(
                    child: IndicatorWidget(
                      length: 3,
                      selectIndex: selectedIndex,
                    ),
                  ),
                  40.height,
                  Row(
                    children: [
                      TextWidget(
                        padding: const EdgeInsets.only(
                          right: 14,
                        ),
                        text: 'Reviews',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: HexColor('#E21B22'),
                      ),
                      const ReviewWidget(
                          iconUrl: 'assets/views_icon.svg', title: '419 views'),
                      TextWidget(
                        text: '  •  ',
                        fontWeight: FontWeight.w500,
                        fontSize: 9,
                        color: HexColor('#E21B22'),
                      ),
                      const ReviewWidget(
                          iconUrl: 'assets/share_icon.svg',
                          title: '427 shares'),
                      TextWidget(
                        text: '  •  ',
                        fontWeight: FontWeight.w500,
                        fontSize: 9,
                        color: HexColor('#E21B22'),
                      ),
                      const ReviewWidget(
                          iconUrl: 'assets/timer_icon.svg',
                          title: '2 minute read'),
                    ],
                  ),
                  8.height,
                  TextWidget(
                    text: widget.title,
                    color: AppColor.black00000,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  8.height,

                  ///Barkha dutt
                  Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset('assets/barkha_dutt.png'),
                      ),
                      7.width,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'Barkha Dutt',
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: AppColor.black00000,
                            ),
                            TextWidget(
                              text: '#818181',
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: HexColor('#818181'),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/share_icon.svg',
                        height: 10,
                      ),
                      10.width,
                      SvgPicture.asset(
                        'assets/more_vert.svg',
                        height: 10,
                      )
                    ],
                  ),
                  12.height,

                  ///photo
                  Center(
                    child: ColoredBox(
                      color: Colors.transparent,
                      child: Image.asset(widget.image),
                    ),
                  ),
                  20.height,

                  ///Description
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                          fontSize: 13.0,
                          color: AppColor.black00000,
                          fontWeight: FontWeight.w400), // Base text style
                      children: const [
                        TextSpan(
                          text:
                              "In addition to MS Dhoni, former Indian cricketer"
                              " Virender Sehwag is also one of the ambassadors"
                              " for the Asian Footwears brand\n\n",
                        ),
                        TextSpan(
                          text:
                              "Mumbai: Asian Footwears, a Delhi-based homegrown full-stack"
                              " footwear brand, has recently signed the Indian cricketing"
                              " legend Mahendra Singh Dhoni as its brand ambassador to"
                              " elevate and strengthen its position in the footwear market,"
                              " the company announced in a press release. In addition to Dhoni,"
                              " former Indian cricketer Virender Sehwag is also one of the "
                              "ambassadors for the brand.",
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify, // Optional alignment
                  ),
                  24.height,
                  Center(
                    child: Container(
                      width: size.width * .8,
                      color: HexColor('#FBFBFB'),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          12.height,
                          Center(
                            child: TextWidget(
                              text: '- Advertisement -',
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: HexColor('#222222'),
                            ),
                          ),
                          10.height,
                          Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset('assets/logo_symbol.png'),
                              ),
                              7.width,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                      text: 'indiaretailing.com',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.black00000,
                                    ),
                                    TextWidget(
                                      text: '19,114 followers',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor('#818181'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          6.height,
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: "Japanese global",
                                    style: TextStyle(
                                        fontSize: 11.0,
                                        color: AppColor.primaryTextBlack,
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "#apparel",
                                    style: TextStyle(
                                        fontSize: 11.0,
                                        color: AppColor.primaryTextBlack,
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "retailer,",
                                    style: TextStyle(
                                        fontSize: 11.0,
                                        color: HexColor('#0173DD'),
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "UNIQLO",
                                    style: TextStyle(
                                        fontSize: 11.0,
                                        color: HexColor('#0173DD'),
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text:
                                        "is set to enter\n Faridabad..see more",
                                    style: TextStyle(
                                        fontSize: 11.0,
                                        color: AppColor.primaryTextBlack,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            textAlign: TextAlign.justify, // Optional alignment
                          ),
                          Image.asset('assets/japanies_global.png'),
                          Container(
                            width: double.infinity,
                            color: HexColor('#EEF3F8'),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                3.height,
                                TextWidget(
                                  text: ' UNIQLO is set to enter Faridabad',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.black00000,
                                ),
                                3.height,
                                TextWidget(
                                  text: ' UNIQLO is set to enter Faridabad',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor('#818181'),
                                ),
                                7.height,
                              ],
                            ),
                          ),
                          Image.asset('assets/comment.png')
                        ],
                      ),
                    ),
                  ),
                  27.height,
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                          fontSize: 13.0,
                          color: AppColor.black00000,
                          fontWeight: FontWeight.w400), // Base text style
                      children: const [
                        TextSpan(
                          text:
                              "“With this association, Asian Footwears aims to connect "
                              "with its customers on a deeper level, leveraging Dhoni’s"
                              " iconic status and inspiring persona to reinforce the "
                              "brand’s values and elevate its presence in the market,”"
                              "Aayush Jindal, chief executive officer, Asian Footwears,"
                              " said about the association.\n\n",
                        ),
                        TextSpan(
                          text:
                              "Mahendra Singh Dhoni, former Indian Cricket Captain, said, "
                              "” Through this partnership, I am eager to explore the "
                              "remarkable range of stylish shoes across various categories "
                              "that Asian Footwears has to offer. This association allows"
                              " me to align myself with a brand that resonates with the"
                              " aspirations of the Indian masses.\n\n",
                        ),
                        TextSpan(
                          text:
                              "The association between the footwear brand\n and MS Dhoni is being managed by Midas.",
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify, // Optional alignment
                  ),
                  25.height,
                  TextWidget(
                    text: 'Comments',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColor.primaryTextBlack,
                  ),
                  12.height,

                  ///Comments
                  Stack(
                    children: [
                      Container(
                        // width: double.infinity,
                        padding:
                            EdgeInsets.only(left: 52, top: 10.5, bottom: 10),
                        decoration: BoxDecoration(
                            color: HexColor('#F8F8F8'),
                            borderRadius: BorderRadius.circular(4.29)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "samantha",
                                style: GoogleFonts.roboto(
                                    color: AppColor.black00000,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: "  •  ",
                                style: GoogleFonts.roboto(
                                    color: HexColor('#E21B22'),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                  text: "2 hours ago",
                                  style: GoogleFonts.roboto(
                                      color: HexColor('#999999'),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10)),
                            ])),
                            11.height,
                            TextWidget(
                              text:
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                              color: HexColor('#050505'),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                            10.height,
                            Row(
                              children: [
                                SvgPicture.asset('assets/thumsup.svg'),
                                12.width,
                                SvgPicture.asset('assets/thums_down.svg'),
                                Expanded(
                                  child: TextWidget(
                                    text: '    Share  Reply',
                                    color: HexColor('#8F8F8F'),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(
                                  Icons.more_vert_outlined,
                                  color: HexColor('#505F79'),
                                  size: 12,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 9,
                        left: 4.5,
                        child: CircleAvatar(
                          child: Image.asset('assets/samandha3.png'),
                        ),
                      ),
                    ],
                  ),
                  15.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Buttons(
                        onPressed: () {},
                        label: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              text: 'Read all comments',
                              color: Colors.white,
                              fontSize: 11,
                            ),
                            Icon(
                              Icons.keyboard_arrow_up_outlined,
                              color: Colors.white,
                              size: 10,
                            )
                          ],
                        ),
                      ),
                      15.width,
                      Buttons(
                        onPressed: () {},
                        backgroundColor: Colors.transparent,
                        border: Border.all(color: HexColor('#EEEEEE')),
                        label: const TextWidget(
                          text: 'Post a comment',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            30.height
          ],
        ),
      ),
    );
  }
}
