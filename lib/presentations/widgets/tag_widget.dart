import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holidays_presents_3pages/utils/app_text_style.dart';

class TagWidget extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  const TagWidget(
      {super.key, required this.backgroundColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.all(Radius.circular(8.r)),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: InkWell(
          child: customTextStyle(
            text: text,
            fontSize: 14.sp,
            textColor: const Color(0xFF000000),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
