import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'contor_event.dart';
part 'contor_state.dart';

class ContorBloc extends Bloc<ContorEvent, ContorState> {
  int contor = 0;
  ContorBloc() : super(ContorInitial()) {
    on<ContorEvent>((event, emit) {
      if (event is IncrementEvent) {
        contor += 1;
        emit(contorchangeValeur(cont: contor));
      } else if (event is DecrementEvent) {
        contor -= 1;
        emit(contorchangeValeur(cont: contor));
      } else if (event is UpdatEvent) {
        contor = 0;
        emit(contorchangeValeur(cont: contor));
      }
    });
  }
}
