import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rafia_task_1/bloc/fuel_bloc.dart';

class OverLayer extends StatelessWidget {
  const OverLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18, right: 18),
      height: 478,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          )),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Buick Sheldon',
                    style: TextStyle(
                        color: Color.fromARGB(255, 68, 66, 66),
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.refresh,
                        color: Color.fromARGB(255, 68, 66, 66)),
                  ),
                )
              ],
            ),
          ),
          SvgPicture.asset('assets/images/green_car.svg', height: 170),
          const CustomIndicator(),
          const SizedBox(
            height: 10,
          ),
          const CustomTextButton(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 8.0),
                    child: SvgPicture.asset(
                      'assets/icons/information_icon.svg',
                      height: 30,
                    )),
                const Expanded(
                  child: Text(
                      'Grab 1Km to will cost 1 Fuel to complete. Fill the Fuel tank to grab more reward. (10KM = 1WAY)'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        width: 400,
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: const Center(
          child: Text(
            'Grab It',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FuelBloc, FuelState>(
      builder: (context, state) {
        return Container(
          width: 350,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blueGrey[50],
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20,
                height: 20,
                child: SvgPicture.asset('assets/icons/fuel.svg'),
              ),
              const Text(
                'FUEL',
                style: TextStyle(
                  color: Color.fromARGB(255, 71, 70, 70),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        state.fuelPlus.toString(),
                        style:
                            const TextStyle(color: Colors.green, fontSize: 18),
                      ),
                      const Text(
                        '/50',
                        style: TextStyle(
                            color: Color.fromARGB(255, 71, 70, 70),
                            fontSize: 18),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LinearPercentIndicator(
                      barRadius: const Radius.circular(20),
                      width: 200.0,
                      lineHeight: 10.0,
                      percent: state.percentage,
                      backgroundColor: Colors.white,
                      progressColor: Colors.green,
                    ),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {
                    context.read<FuelBloc>().add(IndicatorPlus());
                    
                  },
                  icon: const Icon(
                    Icons.add_circle,
                    color: Colors.green,
                    size: 40,
                  ))
            ],
          ),
        );
      },
    );
  }
}
