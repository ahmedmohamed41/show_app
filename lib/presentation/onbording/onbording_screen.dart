import 'package:flutter/material.dart';
import 'package:store_app/presentation/resources/String_manager.dart';
import 'package:store_app/presentation/resources/assets_manager.dart';
import 'package:store_app/presentation/resources/color_manager.dart';
import 'package:store_app/presentation/resources/font_manager.dart';
import 'package:store_app/presentation/resources/style_manager.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<OnBoardingScreen> {
  final PageController controller = PageController();
  final int indexvar = 0;
  List<String> titleList = [
    StringApp.onBordingTitle1,
    StringApp.onBordingTitle2,
    StringApp.onBordingTitle3,
    StringApp.onBordingTitle4,
  ];
  List<String> subTitleList = [
    StringApp.onBordingSubTitle1,
    StringApp.onBordingSubTitle2,
    StringApp.onBordingSubTitle3,
    StringApp.onBordingSubTitle4,
  ];
  List<String> imageList = [
    ImageAssets.onBording1,
    ImageAssets.onBording2,
    ImageAssets.onBording3,
    ImageAssets.onBording4,
  ];
  List<Widget> screenList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: 150, right: 30, left: 30, bottom: 30),
        child: PageView(
         controller: controller,
          children: [
            Text(
              titleList[0],
              style: getSemiBoldStyle(
                  color: ColorManager.darkGrey, fontSize: FontSize.s16),
            ),
            Text(
              subTitleList[0],
              textAlign: TextAlign.center,
              style: getRegularStyle(
                  color: ColorManager.darkGrey, fontSize: FontSize.s14),
            ),
            Image(
              image: AssetImage(imageList[0]),
              width: double.infinity,
              height: 350,
            ),
          ],
        ),
      ),
    );
  }
}
