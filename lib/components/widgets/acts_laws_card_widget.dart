import 'package:flutter/material.dart';

class ActsLawsCard extends StatelessWidget {
  final String title;
  final List<String> itemList;

  const ActsLawsCard({
    super.key,
    required this.title,
    required this.itemList,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0, left: 4, right: 4),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Image.asset(
                      'assets/images/right_arrow.png',
                      width: 20,
                      height: 20,
                      color: Colors.blue.shade800,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: itemList
                  .map((item) => Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            )),
                      ))
                  .toList(),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
