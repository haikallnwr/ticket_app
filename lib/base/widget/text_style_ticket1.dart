import 'package:flutter/material.dart';

import '../res/style/app_styles.dart';

class TextStyleTicket1 extends StatelessWidget {
  final String text;
  const TextStyleTicket1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
    );
  }
}
