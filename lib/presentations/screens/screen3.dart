import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holidays_presents_3pages/presentations/screens/screen2.dart';
import 'package:holidays_presents_3pages/presentations/widgets/custom_icon_button.dart';
import 'package:holidays_presents_3pages/utils/app_colors.dart';
import 'package:holidays_presents_3pages/utils/app_text_style.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomIconButton(
                  NavigationScreen: Screen2(),
                  icon: Icons.arrow_back_ios_new,
                ),
                changeIconWidget(
                  isSelected: isSelected,
                  onChanged: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                )
              ],
            ),
            Image.asset("assets/images/circle_image.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customTextStyle(text: "Snow Globe"),
                customTextStyle(text: "Ghc 20")
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            customTextStyle(
              text:
                  "Snow globe with christmas trees inside covered with a touch of christmas.",
              textColor: AppColors.greyShriftColor,
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                backgroundColor: AppColors.mainColor.withOpacity(0.8),
              ),
              onPressed: () {
                setState(
                  () {
                    isSelected = !isSelected;
                  },
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add,
                    color: AppColors.whiteColor,
                  ),
                  customTextStyle(
                      text: "Add To Cart", textColor: AppColors.whiteColor),
                ],
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}

Widget changeIconWidget({
  required bool isSelected,
  required VoidCallback onChanged,
}) {
  return IconButton(
    onPressed: onChanged,
    icon: Icon(
      isSelected ? Icons.favorite : Icons.favorite_outline,
      color: isSelected ? AppColors.redColor : AppColors.mainShriftColor,
    ),
  );
}
