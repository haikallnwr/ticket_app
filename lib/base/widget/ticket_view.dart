import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/widget/app_column_text_layout.dart';
import 'package:ticket_app/base/widget/app_layout_bulider_widget.dart';
import 'package:ticket_app/base/widget/big_circle.dart';
import 'package:ticket_app/base/widget/big_dot.dart';
import 'package:ticket_app/base/widget/text_style_ticket1.dart';
import 'package:ticket_app/base/widget/text_style_ticket2.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket, this.wholeScreen=false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen==true?0:16),
        child: Column(
          children: [
            //blue part od the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.TicketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    children: [
                      TextStyleTicket1(text: ticket["from"]["code"]),
                      Expanded(child: Container()),
                      BigDot(),
                      //ticket flying icons
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleTicket1(text: ticket["to"]["code"]),
                    ],
                  ),
                  const SizedBox(height: 3),
                  //show departure and destination name with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleTicket2(text: ticket["from"]["name"]),
                      ),
                      Expanded(child: Container()),
                      TextStyleTicket2(text: ticket["flying_time"]),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleTicket2(
                          text: ticket["to"]["name"],
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //circles and dots
            Container(
              height: 20,
              color: AppStyles.TicketOrange,
              child: Row(
                children: [
                  BigCircle(circleRight: false),
                  Expanded(
                    child: AppLayoutBuilderWidget(randomDivider: 20, width: 8),
                  ),
                  BigCircle(circleRight: true),
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.TicketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: ticket["date"],
                        bottomText: "Date",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["departure_time"],
                        bottomText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["number"].toString(),
                        bottomText: "Number",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  //show departure and destination name with time
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
