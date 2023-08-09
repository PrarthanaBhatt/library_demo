import 'package:flutter/material.dart';
import 'package:library_demo/components/widgets/acts_laws_details_widget.dart';
import 'package:library_demo/components/widgets/custom_home_tab_widget.dart';
import 'package:library_demo/components/widgets/description_bottom_widget.dart';
import 'package:library_demo/components/widgets/legal_desc_details_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 7, vsync: this);
    tabController.addListener(() {
      setState(() {}); // Rebuild to update the selected tab
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E4E2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFE5E4E2),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.balance,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            const Text("Law Library"),
          ],
        ),
        titleTextStyle: const TextStyle(
          fontFamily: 'OpenSans',
          color: Colors.black,
          fontSize: 24.0,
          fontWeight: FontWeight.normal,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 12.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 20.0, top: 12.0),
              child: Text(
                'The legal implications of autonomous vehicles and their impact on traffic regulations.',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                RotatedBox(
                  quarterTurns: 3,
                  child: Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: TabBar(
                      labelPadding: const EdgeInsets.symmetric(
                        horizontal: 0.0,
                      ),
                      controller: tabController,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      tabs: [
                        CustomHomeTab(
                          text: 'Support',
                          isSelected: tabController.index == 0,
                        ),
                        CustomHomeTab(
                          text: 'Questions',
                          isSelected: tabController.index == 1,
                        ),
                        CustomHomeTab(
                          text: 'Templates',
                          isSelected: tabController.index == 2,
                        ),
                        CustomHomeTab(
                          text: 'Judgment',
                          isSelected: tabController.index == 3,
                        ),
                        CustomHomeTab(
                          text: 'Acts&Laws',
                          isSelected: tabController.index == 4,
                        ),
                        CustomHomeTab(
                          text: 'Legal Dec',
                          isSelected: tabController.index == 5,
                        ),
                        CustomHomeTab(
                          text: 'Query',
                          isSelected: tabController.index == 6,
                        ),
                      ],
                      indicatorColor: Colors.transparent,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      elevation: 2,
                      child: SizedBox(
                        // height: MediaQuery.,
                        height: MediaQuery.of(context).size.height * 0.67,

                        width: double.maxFinite,
                        child: TabBarView(
                            controller: tabController,
                            children: const [
                              Text("Support"),
                              Text("Questions"),
                              Text("Templates"),
                              Text("Judgment"),
                              ActsLawsDetailsWidget(),
                              LegalDescDetailsWidget(),
                              Text("Query"),
                            ]),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            const DescriptionBottomWidget(),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
