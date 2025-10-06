import 'package:flutter/material.dart';

import '../res/style/app_styles.dart';

class TextStyleTicket2 extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleTicket2({super.key, required this.text, this.align=TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
    );
  }
}
