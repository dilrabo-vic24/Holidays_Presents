import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holidays_presents_3pages/presentations/screens/screen3.dart';
import 'package:holidays_presents_3pages/presentations/widgets/tag_widget.dart';
import 'package:holidays_presents_3pages/utils/app_colors.dart';
import 'package:holidays_presents_3pages/utils/app_images.dart';
import 'package:holidays_presents_3pages/utils/app_text_style.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  State<Screen1> createState() => Screen1State();
}

class Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF8A2BE2),
                    Color(0xFFFFC0CB),
                    Color(0xFFFFB6C1),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 111.h,
            left: 30.w,
            child: Image.asset(AppImages.archa),
          ),
          Positioned(
            top: 20.h,
            left: 25.w,
            right: 25.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  color: AppColors.whiteColor,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen3()));
                  },
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50.h,
            // left: 25.w,
            right: 140.w,
            child: customTextStyle(
              text: "Find your \n      best present",
              textColor: AppColors.whiteColor,
              fontSize: 40.sp,
            ),
          ),
          Positioned(
            top: 140.h,
            left: 25.w,
            child: Row(
              children: [
                Container(
                  width: 250.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                      color: AppColors.whiteColor),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 13.w,
                      ),
                      const Icon(
                        Icons.search,
                        color: AppColors.greyShriftColor,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      customTextStyle(
                          text: "Search",
                          textColor: AppColors.greyShriftColor,
                          fontSize: 14.sp)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  width: 50.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                      color: AppColors.whiteColor),
                  child: const Icon(
                    Icons.filter_alt_outlined,
                    color: AppColors.greyShriftColor,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 200.h,
            left: 25.w,
            child: customTextStyle(
                text: "Popular Tags",
                textColor: AppColors.whiteColor,
                fontSize: 24.sp),
          ),
          Positioned(
            top: 250.h,
            left: 25.w,
            right: 25.w,
            child: Wrap(
              spacing: 5.w,
              runSpacing: 5.h,
              direction: Axis.horizontal,
              children: const [
                TagWidget(
                    backgroundColor: AppColors.tagBackgroundColor1,
                    text: "Chrismas"),
                TagWidget(
                    backgroundColor: AppColors.tagBackgroundColor2,
                    text: "Valentine's Day"),
                TagWidget(
                    backgroundColor: AppColors.tagBackgroundColor1,
                    text: "New Year's Day"),
                TagWidget(
                    backgroundColor: AppColors.tagBackgroundColor2,
                    text: "Thanksgiving"),
                TagWidget(
                    backgroundColor: AppColors.tagBackgroundColor1,
                    text: "Independence Day"),
                TagWidget(
                    backgroundColor: AppColors.tagBackgroundColor2,
                    text: "Halloween"),
                TagWidget(
                    backgroundColor: AppColors.tagBackgroundColor1,
                    text: "Labor Day"),
                TagWidget(
                    backgroundColor: AppColors.tagBackgroundColor2,
                    text: "Anniversary"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
