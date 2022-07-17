import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:rafia_task_1/bloc/fuel_bloc.dart';

class CustomButtonInContainer extends StatelessWidget {
  const CustomButtonInContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FuelBloc, FuelState>(
      builder: (context, state) {
        return Container(
          width: 240,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
            border: Border.all(
              color: const Color.fromARGB(255, 110, 101, 101),
              width: 1,
            ),
          ),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        'assets/icons/icon_g.svg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('${state.amountOne}'),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<FuelBloc>().add(IncrementAmountOne());
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                    ),
                    const VerticalDivider(
                      color: Color.fromARGB(255, 110, 101, 101),
                      thickness: 1,
                    ),
                    const SizedBox(width: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            'assets/icons/winnings.svg',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text('${state.amountTwo}'),
                        ),
                        IconButton(
                          onPressed: () {
                          context.read<FuelBloc>().add(IncrementAmountTwo());
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
