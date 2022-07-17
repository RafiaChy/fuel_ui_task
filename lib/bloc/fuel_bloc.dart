import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fuel_event.dart';
part 'fuel_state.dart';

class FuelBloc extends Bloc<FuelEvent, FuelState> {
  FuelBloc() : super(const FuelState()) {
    on<IncrementAmountOne>(_onIncrementAmountOne);

    on<IncrementAmountTwo>(_onIncrementAmountTwo);
    on<IndicatorPlus>(_onIndicatorPlus);
  }

  void _onIncrementAmountOne(
    IncrementAmountOne event,
    Emitter<FuelState> emit,
  ) {
    int newValue = state.amountOne + 1;
    emit(state.copyWith(amountOne: newValue));
  }

  void _onIncrementAmountTwo(
    IncrementAmountTwo event,
    Emitter<FuelState> emit,
  ) {
    int newValue = state.amountTwo + 1;
    emit(state.copyWith(amountTwo: newValue));
  }

  void _onIndicatorPlus(
    IndicatorPlus event,
    Emitter<FuelState> emit,
  ) {
    if (state.fuelPlus != 50) {
      int newValue = state.fuelPlus + 10;
      double newPercentage = (newValue / 50);
      emit(state.copyWith(fuelPlus: newValue, percentage: newPercentage));


    }
  }
}
