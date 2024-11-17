import 'package:ecommerce_fruit_hub/utils/extensions/extension.dart';
import 'package:ecommerce_fruit_hub/utils/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    this.label,
    this.controller,
    this.hint,
    this.radius,
    this.prefixWidget,
    this.suffixWidget,
    this.padding,
    this.bgColor,
    this.validator,
  });

  final String? label;
  final TextEditingController? controller;
  final String? hint;
  final double? radius;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final EdgeInsets? padding;
  final Color? bgColor;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.c27214D,
            ),
          ),
          10.kh,
        ],
        TextFormField(
          controller: controller,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
          validator: validator,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: padding ?? const EdgeInsets.all(10).r,
            filled: true,
            fillColor: bgColor ?? AppColors.cF3F1F1,
            hintText: hint,
            hintStyle: const TextStyle(
              color: AppColors.cC2BDBD,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: prefixWidget,
            prefixIconConstraints: const BoxConstraints(),
            suffixIcon: suffixWidget,
            suffixIconConstraints: const BoxConstraints(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10).r,
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10).r,
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10).r,
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10).r,
              borderSide: const BorderSide(
                color: Colors.blue,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10).r,
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            focusColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
