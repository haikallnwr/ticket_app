import 'package:flutter/material.dart' as color;
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/screens/home/all_ticket.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({
    super.key,
    required this.bigText,
    required this.smallText, required this.func,
  });
  final String bigText;
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2),
        InkWell(
          onTap: func,
          child: Text(
            smallText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
