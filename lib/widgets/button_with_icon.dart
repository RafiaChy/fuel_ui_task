import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
          
          padding: const EdgeInsets.all(14),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.circle_rounded,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Missions',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
