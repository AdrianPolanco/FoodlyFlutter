import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      width: width,
      height: 110.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      color: kOffWhite,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: kSecondary,
                  backgroundImage: const NetworkImage("https://images.unsplash.com/photo-1508184964240-ee96bb9677a7?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        ReusableText(
                            text: "Deliver to",
                            style: appStyle(13, kSecondary, FontWeight.w600)
                        ),
                      SizedBox(
                        width: width * 0.65,
                        child: Text(
                            "16642 21st Ave N, Playmouth, MN 54221",
                          overflow: TextOverflow.ellipsis,
                          style:
                            appStyle(11, kGrayLight, FontWeight.normal)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(getTimeofDay(), style: const TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }

  String getTimeofDay(){
    DateTime now = DateTime.now();
    int hour = now.hour;

    if(hour >= 6 && hour <= 12) return "☀️";
    else if(hour >= 13 && hour < 18) return "🌤️";

    return "🌙";
  }
}
