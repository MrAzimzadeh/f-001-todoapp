import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfirstappp1/screen/register_screen.dart';
import 'package:myfirstappp1/static/colors/app_colors.dart';
import 'package:myfirstappp1/static/fonts/app_font_size.dart';
import 'package:myfirstappp1/static/images/app_images.dart';

class SplashScreen extends StatelessWidget {
  final String title = 'Get things done with  TODo TODo TODo TODo';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon
          Center(child: SvgPicture.asset(AppImages.splahImage)),
          // Title
          Container(
            width: 247,
            margin: EdgeInsets.only(top: 68, bottom: 15),
            child: titleBuild(),
          ),

          // Description
          Container(
            width: 247,
            margin: EdgeInsets.only(bottom: 60),
            child: Text(
              'Get things done with  TODo TODo TODo TODo',
              maxLines: 2,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 68, left: 25, right: 25),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return RegisterScreen(text: "ikinci text");
                },
              ),
            );
          },
          child: Text(
            'Get Started',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              Color.fromRGBO(250, 168, 133, 1),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            padding: WidgetStateProperty.all(
              EdgeInsets.only(bottom: 20, top: 20, left: 100, right: 100),
            ),
          ),
        ),
      ),
    );
  }

  Widget titleBuild() {
    return Text(
      'Get things done with  TODo TODo TODo TODo',
      maxLines: 2,
      style: TextStyle(
        fontSize: AppFontSize.extraLarge,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
