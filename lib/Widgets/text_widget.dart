import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatefulWidget {
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final int? maxlines;
  final TextOverflow? textOverflow;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final double? textScaleFactor;
  final List<Shadow>? shadows;
  final EdgeInsets? padding;

  const TextWidget(
      {Key? key,
      this.text,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.textAlign,
      this.letterSpacing,
      this.maxlines,
      this.textOverflow,
      this.decoration,
      this.decorationColor,
      this.textScaleFactor,
      this.shadows,
      this.padding})
      : super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: Text(widget.text ?? '',
          softWrap: true,
          overflow: widget.textOverflow ?? TextOverflow.ellipsis,
          maxLines: widget.maxlines ?? 4,
          textScaleFactor: widget.textScaleFactor,
          style: GoogleFonts.roboto(
            shadows: widget.shadows,
            letterSpacing: widget.letterSpacing,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
            decoration: widget.decoration,
            decorationColor: widget.decorationColor,
            color: widget.color,
          ),
          textAlign: widget.textAlign),
    );
  }
}
