import 'package:flutter/material.dart';
import 'package:library_demo/components/widgets/acts_laws_card_widget.dart';

class ActsLawsDetailsWidget extends StatelessWidget {
  const ActsLawsDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> itemListMotorVehicles = [
      'a. Section 112 (Speed Limits)',
      'b. Section 134 (Duty of driver in case of accident and injury to a person)',
      'c. Section 166 (Claim for compensation on accident)',
      'd. Section 184 (Driving dangerously)'
    ];

    final List<String> itemListIPC = [
      'a. Section 279 (Rash driving or riding on a public way)',
      'b. Section 304A (Causing death by negligence)',
      'c. Section 336 (Act endangering life or personal safety of others)',
      'd. Section 337 (Causing hurt by an act endangering life or personal safety of others)',
      'e. Section 338 (Causing grievous hurt by an act endangering life or personal safety of others)'
    ];

    final List<String> itemListCentralMotor = [
      'a. Rule 93 (Maintenance of motor vechicles)',
      'b. Rule 118 (Safety glass)',
      'c. Rule 166 (Brakes)',
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Acts, Laws & regulations",
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.file_copy,
                    color: Colors.blue.shade800,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ActsLawsCard(
                title: "Motor Vehicles Act, 1988",
                itemList: itemListMotorVehicles),
            ActsLawsCard(
                title: "Indian Penal Code (IPC), 1860", itemList: itemListIPC),
            ActsLawsCard(
                title: "Central Motor Vehicles Rules,1989",
                itemList: itemListCentralMotor),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
