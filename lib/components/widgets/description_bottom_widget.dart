import 'package:flutter/material.dart';
import 'package:library_demo/ui/case_mgmt_timeline.dart';

class DescriptionBottomWidget extends StatelessWidget {
  const DescriptionBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15.0, right: 12.0, top: 2.0),
          child: Text(
            'Not what you \nwere expecting ?',
            style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: ElevatedButton(
            onPressed: () {
              // Handle button press
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CaseMgmtTimelineScreen()),
              );
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blue.shade800),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                'Regenerate',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
