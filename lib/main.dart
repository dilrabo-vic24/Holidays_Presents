import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holidays_presents_3pages/presentations/screens/screen1.dart';
// import 'package:holidays_presents_3pages/presentations/screens/screen3.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(360, 690),
      child: MaterialApp(
        title: "Holidays, Presents",
        home: Screen1(),
      ),
    );
  }
}