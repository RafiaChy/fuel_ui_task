part of 'fuel_bloc.dart';

class FuelState extends Equatable {
  const FuelState({
    this.amountOne = 0,
    this.amountTwo = 0,
    this.fuelPlus = 0,
     this.percentage = 0,
  });
  final int amountOne;
  final int amountTwo;
  final int fuelPlus;
  final double percentage;

  @override
  List<Object> get props => [amountOne, amountTwo, fuelPlus, percentage];



  FuelState copyWith({
    int? amountOne,
    int? amountTwo,
    int? fuelPlus,
    double? percentage,
  }) {
    return FuelState(
      amountOne: amountOne ?? this.amountOne,
      amountTwo: amountTwo ?? this.amountTwo,
      fuelPlus: fuelPlus ?? this.fuelPlus,
      percentage: percentage ?? this.percentage,
    );
  }
}
