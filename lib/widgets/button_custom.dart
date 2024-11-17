import 'package:ecommerce_fruit_hub/utils/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    required this.text,
    super.key,
    this.onTap,
    this.bgColor,
    this.textStyle,
    this.radius,
    this.height,
  });

  final String text;
  final VoidCallback? onTap;
  final Color? bgColor;
  final TextStyle? textStyle;
  final double? radius;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(bgColor ?? AppColors.cFFA451),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 10.r),
          ),
        ),
        fixedSize: WidgetStatePropertyAll(
          Size(MediaQuery.sizeOf(context).width, height ?? 56.h),
        ),
      ),
      // statesController: WidgetStatesController({WidgetState.}),
      child: Text(
        text,
        style: textStyle ??
            TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              height: 24 / 16,
              color: Colors.white,
            ),
      ),
    );
  }
}
