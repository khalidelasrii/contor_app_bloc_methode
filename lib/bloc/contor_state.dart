part of 'contor_bloc.dart';

@immutable
abstract class ContorState {}

class ContorInitial extends ContorState {}

class CounterValueChangeState extends ContorState {
  final int cnt;
  CounterValueChangeState({required this.cnt});
}
