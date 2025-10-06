import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.FindTicketColor
      ),
      child: Center(child: Text("Find Tickets", style: AppStyles.textStyle.copyWith(color: Colors.white),)),
    );
  }
}
