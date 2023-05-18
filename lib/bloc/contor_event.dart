part of 'contor_bloc.dart';

@immutable
abstract class ContorEvent {}

class IncrementEvent implements ContorEvent {}

class DecrementEvent implements ContorEvent {}

class UpdatEvent implements ContorEvent {}
