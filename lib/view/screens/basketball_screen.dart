import 'package:basketball_point_counter/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasketballScreen extends StatefulWidget {
  const BasketballScreen({super.key});

  @override
  State<BasketballScreen> createState() => _BasketballScreenState();
}

class _BasketballScreenState extends State<BasketballScreen> {
  int counterA = 0;
  int counterB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Point Counter',
        ),
        backgroundColor: mainColor,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Team A',
                    style: TextStyle(fontSize: 40.sp),
                  ),
                  Text(
                    '$counterA',
                    style: TextStyle(fontSize: 135.sp),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.toDouble()))),
                    onPressed: () {
                      setState(() {
                        counterA += 1;
                      });
                    },
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.toDouble()))),
                    onPressed: () {
                      setState(() {
                        counterA += 2;
                      });
                    },
                    child: const Text(
                      'Add 2 Point',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.toDouble()))),
                    onPressed: () {
                      setState(() {
                        counterA += 3;
                      });
                    },
                    child: const Text(
                      'Add 3 Point',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 500,
                child: VerticalDivider(
                  width: 50.w,
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Column(
                children: [
                  Text(
                    'Team B',
                    style: TextStyle(fontSize: 40.sp),
                  ),
                  Text(
                    '$counterB',
                    style: TextStyle(fontSize: 135.sp),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.toDouble()))),
                    onPressed: () {
                      setState(() {
                        counterB += 1;
                      });
                    },
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.toDouble()))),
                    onPressed: () {
                      setState(() {
                        counterB += 2;
                      });
                    },
                    child: const Text(
                      'Add 2 Point',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.toDouble()))),
                    onPressed: () {
                      setState(() {
                        counterB += 3;
                      });
                    },
                    child: const Text(
                      'Add 3 Point',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: mainColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.toDouble()))),
            onPressed: () {
              setState(() {
                counterB = 0;
                counterA = 0;
              });
            },
            child: const Text(
              '     Reset     ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
