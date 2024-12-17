import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holidays_presents_3pages/utils/app_colors.dart';

Widget customTextStyle({
  required String text,
  double? fontSize,
  FontWeight? fontWeight,
  Color? textColor,
}) {
  return Text(
    textAlign: TextAlign.center,
    text,
    maxLines: 2,
    style: TextStyle(
      fontSize: fontSize ?? 20.sp,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: textColor ?? AppColors.mainShriftColor,
      fontFamily: 'Roboto',
    ),
  );
}
