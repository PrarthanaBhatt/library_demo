import 'package:flutter/material.dart';

class LegalDescDetailsWidget extends StatelessWidget {
  const LegalDescDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Column(
        children: const [
          SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Legal Description",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "In the legal case involving a cehicular accident, the deriver, hereby referred to as the defendant, contends that they exercised due and caustion while operating their motor vechicle on a desolate urban road in Delhi. The incident occurred at approximately 10:00 PM, with the defendant maintaining a speed below the mandated limit",
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              "Unexpectedly, a pedestrain emerged from the bushes adjacent to the road, presenting the defendant with little time to react. Despite their immediate attempt to brake, the defendant was unable to prevent the collision, resulting in severe injuries for the pedestrain. The defendant asserts that they look prompt action to call for an ambulance in order to provide medical assistance to the injured individual."),
          SizedBox(
            height: 10,
          ),
          Text(
              "The defendant seeks legal representation to defend their actions and mitigate any potential liability, maintaining that they exercised reasonable case under the circumstances and that the pedestrain's sudden apperance contributed to the unfortunate incident."),
          SizedBox(height: 100),
          Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "29/2000",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              )),
        ],
      ),
    );
  }
}
