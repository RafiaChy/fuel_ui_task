part of 'fuel_bloc.dart';

abstract class FuelEvent extends Equatable {
  const FuelEvent();

  @override
  List<Object> get props => [];
}

class IncrementAmountOne extends FuelEvent{

}

class IncrementAmountTwo extends FuelEvent{

}

class IndicatorPlus extends FuelEvent{
  
}