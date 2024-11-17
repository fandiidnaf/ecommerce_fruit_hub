import 'package:ecommerce_fruit_hub/features/auth/view/auth_page.dart';
import 'package:ecommerce_fruit_hub/utils/extensions/extension.dart';
import 'package:ecommerce_fruit_hub/utils/theme/color.dart';
import 'package:ecommerce_fruit_hub/widgets/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WebviewPage extends StatelessWidget {
  const WebviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 34).r,
              color: AppColors.cFFA451,
              height: 469.h,
              width: 1.sw,
              alignment: Alignment.center,
              child: Image.asset('assets/images/welcome-screen-fruit.png'),
            ),
            40.kh,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get The Freshest Fruit Salad Combo',
                    style: TextStyle(
                      color: AppColors.c27214D,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                    ),
                  ),
                  8.kh,
                  Text(
                    '''We deliver the best and freshest fruit salad in town. Order for a combo today!!!''',
                    style: TextStyle(
                      color: AppColors.c5D577E,
                      height: 24 / 16,
                      fontSize: 16.sp,
                    ),
                  ),
                  58.kh,
                  ButtonCustom(
                    text: "Let's Continue",
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<AuthPage>(
                          builder: (context) => const AuthPage(),
                        ),
                      );
                    },
                  ),
                  20.kh,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
