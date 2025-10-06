import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widget/app_double_text.dart';
import 'package:ticket_app/base/widget/ticket_view.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';

import '../../base/res/media.dart';
import '../../base/utils/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning!", style: AppStyles.headLineStyle3),
                        const SizedBox(height: 5),
                        Text("Book Tickets", style: AppStyles.headLineStyle1),
                      ],
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search Icom"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Upcoming Flight',
                  smallText: 'View all',
                  func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList.take(3).map((singleTicket) =>
                      TicketView(ticket:singleTicket)
                    ).toList(),
                  )
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                  func: () => Navigator.pushNamed(context, AppRoutes.allTickets),

                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList.take(2).map((singleHotel) =>
                          Hotel(hotel:singleHotel)
                      ).toList(),
                    )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
