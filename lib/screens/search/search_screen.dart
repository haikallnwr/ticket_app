import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_ticket.dart';

import '../../base/utils/app_routes.dart';
import '../../base/widget/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 20),
          const AppTicketTabs(),
          const SizedBox(height: 25),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          const SizedBox(height: 20),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(height: 20),
          const FindTicket(),
          SizedBox(height: 40),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: size.width * .42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppMedia.planeSit),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "20% Discount on the early booking of this flight. Don't miss",
                      style: AppStyles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    width: size.width * .44,
                    height: 210,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3AB8B8),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discount\nfor survey",
                          style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Take the survey about our services and get discount",
                          style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
