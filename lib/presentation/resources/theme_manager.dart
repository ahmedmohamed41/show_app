import 'package:flutter/material.dart';
import 'package:store_app/presentation/resources/color_manager.dart';
import 'package:store_app/presentation/resources/font_manager.dart';
import 'package:store_app/presentation/resources/style_manager.dart';
import 'package:store_app/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    
    // cardView theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      elevation: AppSize.s4,
      shadowColor: ColorManager.grey,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      color: ColorManager.primary,
      elevation: AppSize.s4,
      centerTitle: true,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16,
      ),
    ),
    // button theme

    buttonTheme: ButtonThemeData(
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
    ),
    //elevated button theme

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSize.s17,
        ),
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    //text theme

    textTheme: TextTheme(
      displayLarge:
          getBoldStyle(color: ColorManager.white, fontSize: FontSize.s22),
      titleMedium:
          getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
      headlineLarge: getSemiBoldStyle(
          color: ColorManager.darkGrey, fontSize: FontSize.s16),
      bodyLarge: getRegularStyle(color: ColorManager.grey1),
      bodySmall: getRegularStyle(color: ColorManager.grey),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle:
          getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      labelStyle:
          getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      errorStyle:
          getRegularStyle(color: ColorManager.error, fontSize: AppMargin.m14),
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
  );
}
