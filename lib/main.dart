import 'package:flutter/material.dart';
import 'package:flutter_application_/core/utils/appcolors.dart';
import 'package:flutter_application_/core/utils/text_styles.dart';
import 'package:flutter_application_/features/Home/view_model/home_cubit.dart';
import 'package:flutter_application_/features/splash/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: appcolors.Scaffoldbag,
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  selectedItemColor: appcolors.lemonada,
                  unselectedItemColor: Colors.grey,
                  backgroundColor: appcolors.containerBg,
                  showSelectedLabels: false,
                  showUnselectedLabels: false),
              appBarTheme: AppBarTheme(backgroundColor: appcolors.Scaffoldbag),
              inputDecorationTheme: InputDecorationTheme(
                hintStyle: getbodystyle(),
                fillColor: appcolors.containerBg,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              )),
          home: const Splash_View()),
    );
  }
}
