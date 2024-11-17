import 'package:flutter/material.dart';

extension SizedBoxExt on num {
  Widget get kw {
    return SizedBox(width: toDouble());
  }

  Widget get kh {
    return SizedBox(height: toDouble());
  }
}

extension SizeDevice on BuildContext {
  double get width {
    return MediaQuery.sizeOf(this).width;
  }

  double get height {
    return MediaQuery.sizeOf(this).height;
  }
}
