import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tridotstech/Widgets/text_widget.dart';

import 'colors.dart';

extension Size on num {
  SizedBox get height => SizedBox(
        height: toDouble(),
      );
  SizedBox get width => SizedBox(
        width: toDouble(),
      );
}

class PhotoContainer extends StatelessWidget {
  const PhotoContainer(
      {super.key,
      this.height,
      this.width,
      this.margin,
      required this.imgUrl,
      this.cornerRadius});
  final double? height;
  final double? width;
  final double? cornerRadius;
  final String imgUrl;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(cornerRadius ?? 0))),
    );
  }
}

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget(
      {super.key,
      required this.length,
      this.selectIndex,
      this.indicateColor,
      this.padding});
  final int length;
  final int? selectIndex;
  final Color? indicateColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(
        // mainAxisAlignment: length != 1 ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          for (var i = 0; i < length; i++)
            Container(
              height: 5,
              width: i == selectIndex ? 15.19 : 5,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: i == selectIndex
                      ? indicateColor ?? AppColor.indicatorColor
                      : Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(Radius.circular(5.64))),
            ),
        ],
      ),
    );
  }
}

class AdvertisementWidget extends StatelessWidget {
  const AdvertisementWidget({super.key, required this.imgUrl, this.height});
  final String imgUrl;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextWidget(
            text: '- Advertisement -',
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: HexColor('#222222'),
          ),
          5.height,
          SizedBox(
            height: height ?? 100,
            width: MediaQuery.sizeOf(context).width * .8,
            child: PageView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, index) {
                  return PhotoContainer(
                    imgUrl: imgUrl,
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  const ReviewWidget(
      {super.key, required this.iconUrl, required this.title, this.padding});
  final String iconUrl;
  final String title;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(
        children: [
          SvgPicture.asset(iconUrl),
          3.width,
          TextWidget(
            text: title,
            fontWeight: FontWeight.w500,
            fontSize: 9,
            color: HexColor('#818181'),
          )
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Buttons(
      {super.key,
      required this.label,
      required this.onPressed,
      this.onTap,
      this.backgroundColor,
      this.border,
      this.width});
  final Widget? label;
  final double? width;
  void Function()? onPressed;
  void Function()? onTap;
  final Color? backgroundColor;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 33,
        width: 148,
        decoration: BoxDecoration(
            color: backgroundColor ?? HexColor('#E21B22'),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            border: border),
        alignment: Alignment.center,
        child: label,
      ),
    );
  }
}
