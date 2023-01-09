library textfield_shadow;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomTextfield extends StatelessWidget {
  final Size? size;
  final TextEditingController? controller;
  final String? hintStr;
  final TextStyle? hintStyle;
  final Icon? prefixIcon;
  final Widget? prefix;
  final Icon? suffixIcon;
  final Widget? suffix;
  final bool isObsecure;
  final Function? onChanged;
  final int? maxLength;
  final int? maxLines;
  final bool autoFocus;
  final bool readOnly;
  final Function? onSubmitted;
  final List<TextInputFormatter>? textInputFormater;
  final TextInputType? keyboardType;
  final TextStyle? textStyle;
  final List<BoxShadow>? boxShadow;
  final Color? bgColor;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  const CustomTextfield({
    Key? key,
    this.size,
    this.controller,
    this.hintStr,
    this.hintStyle,
    this.prefixIcon,
    this.prefix,
    this.suffixIcon,
    this.suffix,
    this.isObsecure = false,
    this.onChanged,
    this.maxLength,
    this.maxLines,
    this.autoFocus = false,
    this.onSubmitted,
    this.textInputFormater,
    this.readOnly = false,
    this.keyboardType,
    this.textStyle,
    this.boxShadow,
    this.bgColor,
    this.borderRadius,
    this.padding,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: (padding != null)
      ? padding
      : EdgeInsets.symmetric(
        vertical: size!.width * 0.01,
        horizontal: size!.width * 0.005,
      ),
      margin: (margin != null)
      ? margin
      : EdgeInsets.symmetric(
        horizontal: size!.width * 0.05,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: (bgColor != null) ? bgColor : const Color(0xFFFAFAFA),
        borderRadius: (borderRadius != null) ? borderRadius : BorderRadius.circular(10),
        boxShadow: (boxShadow != null)
          ? boxShadow
          : [
            BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 20,
            color: const Color(0xFF305F72).withOpacity(0.23),
          ),
        ],
      ),
      child: TextField(
        keyboardType: keyboardType,
        obscureText: isObsecure,
        controller: controller,
        onChanged: (value) {
          if(onChanged != null) {
            onChanged!(value);
          }
        },
        onSubmitted: (val) {
          if(onSubmitted != null) {
            onSubmitted!(val);
          }
        },
        readOnly: readOnly,
        maxLength: maxLength,
        maxLines: maxLines,
        autofocus: autoFocus,
        inputFormatters: textInputFormater,
        style: (textStyle != null) ? textStyle : TextStyle(fontSize: 18,
          color: const Color(0xFF305F72).withOpacity(0.7),
        ),
        decoration: InputDecoration(
          hintText: hintStr,
          prefixIcon: prefixIcon,
          prefix: prefix,
          hintStyle: hintStyle,
          suffixIcon: suffixIcon,
          suffix: suffix,
          border: InputBorder.none,
        ),
      ),
    );
  }
}