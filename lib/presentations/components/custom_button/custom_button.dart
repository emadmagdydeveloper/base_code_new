import 'package:ditch_it/core/app_theme/app_colors.dart';
import 'package:ditch_it/core/extensions/num_extensions.dart';
import 'package:flutter/material.dart';
import '../../../core/dimens/dimens.dart';
import '../custom_text/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double? fontSize;
  final Color? fontColor;
  final FontWeight? fontWeight;

  final Color? bg;
  final VoidCallback onTap;
  final double? width;
  final double? height;
  final double? radius;
  final double? elevation;

  const CustomButton(
      {super.key,
      required this.title,
      this.fontSize,
      this.fontWeight,
      this.fontColor,
      this.bg,
      required this.onTap,
      this.width,
      this.radius, this.height, this.elevation
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width ?? Dimens.width,
        height: height??56.0.h,
        child: Card(
          surfaceTintColor: Colors.transparent,
          elevation: elevation??0,
          color: bg,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius??12.r)),
          child: Center(
            child: CustomText(
              title: title,
              fontSize: fontSize??14.sp,
              fontColor: fontColor??AppColors.white,
              fontWeight: fontWeight??FontWeight.normal,
              maxLines: 1,
            ),
          ),
        ),
      ),
    );
  }
}
