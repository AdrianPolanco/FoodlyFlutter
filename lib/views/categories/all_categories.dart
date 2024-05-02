import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/category_widget.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: Text(
            'All Categories',
        style: appStyle(12, kGray, FontWeight.w600)),
      ),
      body: Container(
        height: height,
        padding: EdgeInsets.only(left: 12.w, top: 10.h),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: List.generate(
              categories.length,
              (i){
                   var category = categories[i];
                   return ListTile(
                      leading: CircleAvatar(
                          radius: 18,
                            backgroundColor: kGrayLight,
                            child: Image.network(
                              category["imageUrl"],
                              fit: BoxFit.contain
                            )
                     ),
                     title: ReusableText(
                       text: category["title"],
                       style: appStyle(12, kGray, FontWeight.normal),
                     ),
                     trailing: Icon(Icons.arrow_forward, color: kGray, size: 15.r)
                    );
              }
        ),
      ),
    ));
  }
}