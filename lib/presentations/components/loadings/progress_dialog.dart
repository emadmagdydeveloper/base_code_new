import 'package:ditch_it/core/app_theme/app_colors.dart';
import 'package:ditch_it/core/dimens/dimens.dart';
import 'package:ditch_it/core/extensions/num_extensions.dart';
import 'package:ditch_it/core/resources/font_size.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog_null_safe/progress_dialog_null_safe.dart';

import '../../../core/app_theme/text_styles.dart';

ProgressDialog createProgressDialog(
    {required BuildContext context, required String msg}) {
  String lang = context.locale.languageCode;
  msg = msg.replaceAll('.', '');
  msg = lang=='ar'? '.... $msg':'$msg ....';
  var dialog = ProgressDialog(context, isDismissible: false,);

  dialog.style(
    backgroundColor: AppColors.white,
    message: msg,
    messageTextStyle: AppTextStyles().normalText(fontSize: AppFonts.font_14).textColorNormal(AppColors.darkColor),
    textAlign: lang=='ar'?TextAlign.end:TextAlign.start,
    progressWidget: Container(
        padding:  EdgeInsets.all(Dimens.padding_12v),
        child:  CircularProgressIndicator(strokeWidth: 2.w,color: AppColors.primaryColor,)),
      borderRadius: 4,
      );
  return dialog;
}