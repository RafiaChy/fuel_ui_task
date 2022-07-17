import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({
    Key? key,
    required this.headline,
    required this.assetLocation,
    required this.amount,
    required this.unit,
  }) : super(key: key);
  final String headline;
  final String assetLocation;
  final String amount;
  final String unit;

  @override
  Widget build(BuildContext context) {
  
        return SizedBox(
          height: 100,
          width: 170,
          child: Card(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        headline,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset(assetLocation)),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        amount,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Text(
                      unit,
                      style: const TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      
    
  }
}
