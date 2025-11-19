import 'package:flutter/material.dart';
import 'package:viavita_new_customer/Shopkeeper/SKHomeScreen/home_appbarwidget.dart';
import 'package:viavita_new_customer/Worker/Home/widgets/containerblocks.dart';
import 'package:viavita_new_customer/Worker/Home/widgets/menuContainers.dart';
import 'package:viavita_new_customer/Worker/Home/widgets/searchbar.dart';
import 'package:viavita_new_customer/Worker/Home/widgets/taskcontainers.dart' show TaskContainerWidgets;
import 'package:viavita_new_customer/Worker/Shop/screen.dart';
import 'package:viavita_new_customer/Worker/SubscriptionPlans/screen.dart';
import 'package:viavita_new_customer/color/newcolors.dart';
import 'package:viavita_new_customer/images/images.dart';
import 'package:viavita_new_customer/screens/DetailScreen/detail_screen.dart';

class WorkerHomeWidget extends StatelessWidget {
  const WorkerHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,

      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 50.0),
        child: Column(
          children: [
            HomeAppBarWidget(
              name: 'Ashmi A B',
              imgUrl: Images.offer_profile
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: mediaquery.height * 0.03),

                    SearchBarWidget(),
                    SizedBox(height: mediaquery.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CountContainerWidgets(
                          bgColor: AppColors.containerbg1,
                          text: 'New Task',
                          count: '14',
                        ),
                        CountContainerWidgets(
                          bgColor: AppColors.white,
                          text: 'Accepted',
                          count: '3',
                        ),
                        CountContainerWidgets(
                          bgColor: AppColors.containerbg2,
                          text: 'Offers',
                          count: '11',
                        ),
                      ],
                    ),
                    SizedBox(height: mediaquery.height * 0.03),
                    Column(
                      children: [
                        MenuContainerWidgets(
                          icondata: Appicons.viewall_task_icon,
                          title: 'View all Tasks',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PaintingDetailsScreen()));
                            
                          },
                        ),
                        SizedBox(height: mediaquery.height * 0.008),
                        MenuContainerWidgets(
                          icondata: Appicons.manage_sub_icon,
                          title: 'Manage Subscription',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SubscriptionPlanWidget()));
                            
                          },
                        ),
                        SizedBox(height: mediaquery.height * 0.008),
                        MenuContainerWidgets(
                          icondata: Appicons.visit_shop_icon,
                          title: 'Visit Shop',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkerShopWidget()));
                            
                          },
                        ),
                      ],
                    ),

                    SizedBox(height: mediaquery.height * 0.04),
                    Text(
                      'New Available Tasks',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor,
                      ),
                    ),
                    SizedBox(height: mediaquery.height * 0.02),
                    TaskContainerWidgets(
                      category: 'Gardening',
                      title: 'Lawn Mowing and Garden Weeding',
                      location: '₹500 . 123 Street, TVM',
                      time: 'Est. 2 hours',
                    ),
                    SizedBox(height: mediaquery.height * 0.02),
                    TaskContainerWidgets(
                      category: 'Plumbing',
                      title: 'Fix Leaky Kitchen Faucet',
                      location: '₹500 . 123 Street, TVM',
                      time: 'Est. 2 hours',
                    ),

                    SizedBox(height: mediaquery.height * 0.02),
                    TaskContainerWidgets(
                      category: 'Gardening',
                      title: 'Lawn Mowing and Garden Weeding',
                      location: '₹500 . 123 Street, TVM',
                      time: 'Est. 2 hours',
                    ),

                    SizedBox(height: mediaquery.height * 0.02),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
