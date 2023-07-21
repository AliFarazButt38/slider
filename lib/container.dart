import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Containernew extends StatefulWidget {
  const Containernew({Key? key}) : super(key: key);

  @override
  State<Containernew> createState() => _ContainernewState();
}

class _ContainernewState extends State<Containernew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 380.w,
            height: 260.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Color(0xFF000C79),
                  Color(0xFF358CB8),
                ],
              ),
            ),
            child: Padding(
              padding:
              EdgeInsets.only(left: 15.w, right: 10.w, top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/blocks.png"),
                      Container(
                        width: 156.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: Color(0xffEBF8FF ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Return Target: 10-17% ",
                          style: TextStyle(
                            color: Color(0xff286CA8),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "BlackHole Investment's",
                    style: TextStyle(
                      color: Color(0xff25E3EF),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "RE Development Fund I",
                    style: TextStyle(
                      color:  Color(0xffEBF8FF),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 105.w,
                        height: 28.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color:  Color(0xffEBF8FF),
                            )),
                        alignment: Alignment.center,
                        child: Text(
                          "Private Property",
                          style: TextStyle(
                            color: Color(0xffEBF8FF),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w),
                        child: Container(
                          width: 76.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: Color(0xffEBF8FF),
                              )),
                          alignment: Alignment.center,
                          child: Text(
                            "Urban Infill",
                            style: TextStyle(
                              color: Color(0xffEBF8FF),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w),
                        child: Container(
                          width: 28.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color:  Color(0xffEBF8FF),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "+5",
                            style: TextStyle(
                              color:  Color(0xffEBF8FF),
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Center(
                    child: SizedBox(
                      width: 336.w,
                      height: 45.h,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle sign in button press here
                        },
                        child: Text(
                          "Learn More...",
                          style: TextStyle(
                              color: Color(0xff1D529B),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffF8F8F8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
