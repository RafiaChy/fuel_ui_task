import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rafia_task_1/bloc/fuel_bloc.dart';
import 'package:rafia_task_1/widgets/button_with_icon.dart';
import 'package:rafia_task_1/widgets/custom_button_in_container.dart';
import 'package:rafia_task_1/widgets/information_card.dart';
import 'package:rafia_task_1/widgets/overlayer.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FuelBloc, FuelState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.blueGrey[50],
          appBar: AppBar(
            leading: SizedBox(
              height: 5,
              width: 5,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            title: const Text(
              'Profit',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.all(9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 5,
                    ),
                    CustomButtonInContainer(),
                    ButtonWithIcon(),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    InformationCard(
                        headline: 'DISTANCE',
                        assetLocation: 'assets/icons/road.svg',
                        amount: '240',
                        unit: 'KM'),
                    InformationCard(
                        headline: 'EARNED',
                        assetLocation: 'assets/icons/winnings.svg',
                        amount: '240',
                        unit: 'WAY'),
                  ],
                ),
              ),
              const OverLayer(),
            ],
          ),
        );
      },
    );
  }
}
