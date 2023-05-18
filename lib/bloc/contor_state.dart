part of 'contor_bloc.dart';

@immutable
abstract class ContorState {}

class ContorInitial extends ContorState {}

class contorchangeValeur extends ContorState {
  final int cont;
  contorchangeValeur({required this.cont});
}
