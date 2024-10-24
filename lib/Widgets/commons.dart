import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

photoContainer(
  String imgUrl,
  double? cornerRadius,
  height,
  width, [
  Color? color,
]) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        color: color,
        image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(cornerRadius!)),
  );
}

selectCard(String image, title, subtitle, beverage) {
  return Container(
    margin: EdgeInsets.only(right: 17.16),
    child: Row(
      children: [
        photoContainer(image, 5.14, 66.36, 106.7),
        15.89.width,
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            12.height,
            TextWidget(
              text: title,
              fontSize: 8.2,
              fontWeight: FontWeight.w600,
              color: AppColor.primaryRed,
            ),
            TextWidget(
              text: subtitle,
              color: AppColor.primaryTextBlack,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
            7.height,
            Row(
              children: [
                TextWidget(
                  text: beverage,
                  color: AppColor.primaryTextBlack,
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
  );
}
