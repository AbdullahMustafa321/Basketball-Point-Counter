import 'package:basketball_point_counter/constant/colors.dart';
import 'package:basketball_point_counter/cubit/counter_cubit/counter_cubit.dart';
import 'package:basketball_point_counter/cubit/counter_cubit/counter_state.dart';
import 'package:basketball_point_counter/view/widgets/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasketballScreen extends StatelessWidget {
  const BasketballScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Point Counter',
              ),
              backgroundColor: kPrimaryColor,
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
                          '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
                          style: TextStyle(fontSize: 135.sp),
                        ),
                        CustomElevatedButtonWidget(
                          text: 'Add 1 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement('A', 1);
                          },
                        ),
                        CustomElevatedButtonWidget(
                          text: 'Add 2 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement('A', 2);
                          },
                        ),
                        CustomElevatedButtonWidget(
                          text: 'Add 3 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement('A', 3);
                          },
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
                          '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
                          style: TextStyle(fontSize: 135.sp),
                        ),
                        CustomElevatedButtonWidget(
                          text: 'Add 1 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement('B', 1);
                          },
                        ),
                        CustomElevatedButtonWidget(
                          text: 'Add 2 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement('B', 2);
                          },
                        ),
                        CustomElevatedButtonWidget(
                          text: 'Add 3 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement('B', 3);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomElevatedButtonWidget(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).teamIncrement('R', 1);
                    }, text: '     Reset     '),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
