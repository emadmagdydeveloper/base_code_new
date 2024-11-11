
import 'package:ditch_it/core/extensions/num_extensions.dart';
import 'package:ditch_it/core/app_theme/app_colors.dart';
import 'package:ditch_it/core/resources/font_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/dimens/dimens.dart';
import '../custom_text/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final double? fontSize;
  final Color? fontColor;
  final bool? showBackArrow;
  final bool? centerTitle;
  final List<Widget>? actions;
  final bool? showToolBar;
  final double? elevation;
  final Color? bgColor;
  final SystemUiOverlayStyle? systemUiOverlayStyle;

  const CustomAppBar(
      {super.key,
      this.title,
      this.fontSize,
      this.fontColor,
      this.showBackArrow,
      this.centerTitle,
      this.actions,
      this.showToolBar,
      this.elevation,
      this.bgColor,
      this.systemUiOverlayStyle,});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      systemOverlayStyle: systemUiOverlayStyle,
      title: CustomText(
        title: title ?? '',
        fontSize: fontSize ?? AppFonts.font_14,
        fontColor: fontColor??AppColors.darkColor,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: centerTitle??false,
      actions: actions,
      automaticallyImplyLeading: showBackArrow??true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(Dimens.width, showToolBar == true ? 60.h : 0);
}
