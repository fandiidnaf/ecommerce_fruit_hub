import 'package:ecommerce_fruit_hub/features/counter/view/counter_page.dart';
import 'package:ecommerce_fruit_hub/utils/extensions/extension.dart';
import 'package:ecommerce_fruit_hub/utils/theme/color.dart';
import 'package:ecommerce_fruit_hub/widgets/button_custom.dart';
import 'package:ecommerce_fruit_hub/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late TextEditingController nameC;

  @override
  void initState() {
    super.initState();
    nameC = TextEditingController();
  }

  @override
  void dispose() {
    nameC.dispose();
    super.dispose();
  }

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
              child: Image.asset('assets/images/authentication-fruit.png'),
            ),
            40.kh,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34).r,
              child: TextInput(
                label: 'What is your firstname',
                hint: 'Tony',
                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return 'nama tidak boleh kosong!!!';
                  }
                  return null;
                },
              ),
            ),
            42.kh,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34).r,
              child: ButtonCustom(
                text: 'Start Ordering',
                onTap: () {
                  if (nameC.text.isNotEmpty) {
                    Navigator.of(context).push(
                      MaterialPageRoute<CounterPage>(
                        builder: (context) => const CounterPage(),
                      ),
                    );
                  } else {}
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
