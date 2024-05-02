import 'package:basketball_point_counter/cubit/counter_cubit/counter_cubit.dart';
import 'package:basketball_point_counter/view/screens/basketball_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 690),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (_,child){
        return BlocProvider(
          create: (context)=> CounterCubit(),
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: BasketballScreen(),
          ),
        );
      },
    );
  }
}
