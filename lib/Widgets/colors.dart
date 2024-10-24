import 'dart:ui';

class AppColor {
  static Color backgroundWhite = HexColor('#F8F9FA');
  static Color primaryRed = HexColor('#E21B22');
  static Color primaryTextBlack = HexColor('#121212');
  static Color textBlack405 = HexColor('#060405');
  static Color textGreyE4E = HexColor('#504E4E');
  static Color indicatorColor = HexColor('#CC0000');
  static Color latestNewsCardColor = HexColor('#EEEEEE');
  static Color textColor838 = HexColor('#383838');
  static Color irPrimeColor = HexColor('#FFEDEF');
  static Color black222222 = HexColor('#222222');
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }

    final hexNum = int.parse(hexColor, radix: 16);

    if (hexNum == 0) {
      return 0xff000000;
    }

    return hexNum;
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class ColorToHex extends Color {
  ///convert material colors to hexcolor
  static int _convertColorTHex(Color color) {
    var hex = '${color.value}';
    return int.parse(
      hex,
    );
  }

  ColorToHex(final Color color) : super(_convertColorTHex(color));
}
