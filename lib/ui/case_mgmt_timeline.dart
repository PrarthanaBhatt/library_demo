import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:library_demo/components/widgets/custom_home_tab_widget.dart';
import 'package:library_demo/components/widgets/custom_tab_case_timeline.dart';

class CaseMgmtTimelineScreen extends StatefulWidget {
  const CaseMgmtTimelineScreen({super.key});

  @override
  State<CaseMgmtTimelineScreen> createState() => _CaseMgmtTimelineScreenState();
}

class _CaseMgmtTimelineScreenState extends State<CaseMgmtTimelineScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  // Initial Selected Value
  String dropdownvalue = 'July 2023';

  // List of items in our dropdown menu
  var items = [
    'Jan 2023',
    'Feb 2023',
    'Mar 2023',
    'Apr 2023',
    'May 2023',
    'June 2023',
    'July 2023',
    'Aug 2023',
    'Sept 2023',
    'Oct 2023',
    'Nov 2023',
    'Dec 2023',
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.blue,
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
            const Text("Case No: 1"),
          ],
        ),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 24.0,
          fontWeight: FontWeight.normal,
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: TabBar(
              labelPadding: const EdgeInsets.symmetric(
                horizontal: 4.0,
              ),
              controller: tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: [
                CustomTabCaseTimeLine(
                  icon: Icons.chat,
                  text: 'Interact',
                  isSelected: tabController.index == 0,
                ),
                CustomTabCaseTimeLine(
                  icon: Icons.access_time_outlined,
                  text: 'Timeline',
                  isSelected: tabController.index == 1,
                ),
                CustomTabCaseTimeLine(
                  icon: Icons.task,
                  text: 'Tasks',
                  isSelected: tabController.index == 2,
                ),
                CustomTabCaseTimeLine(
                  icon: Icons.file_copy_rounded,
                  text: 'File Vault',
                  isSelected: tabController.index == 3,
                ),
              ],
              indicatorColor: Colors.transparent,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TabBarView(controller: tabController, children: [
                const Text("Interact"),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Case Timeline",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.blue,
                          ),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            );
                          }).toList(),
                          underline: Container(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                    // Expanded(
                    //     child: DashedLineConnector()), // Dashed line connector

                    // Text("July 1"),
                    // Text("July2"),
                    // Expanded(
                    //     child: DashedLineConnector()), // Dashed line connector
                  ],
                ),
                Text("Tasks"),
                Text("File Vault"),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class DashedLineConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedLinePainter(),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final dashWidth = 5;
    final dashSpace = 5;
    double startY = 0;

    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
