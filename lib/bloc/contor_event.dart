part of 'contor_bloc.dart';

@immutable
abstract class ContorEvent {}

class IncrementEvent extends ContorEvent {}

class DecrementEvent extends ContorEvent {}

class UpdatEvent extends ContorEvent {}
