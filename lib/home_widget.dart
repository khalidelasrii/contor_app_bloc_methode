import 'package:bloc_countr_app/bloc/contor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              BlocProvider.of<ContorBloc>(context).add(IncrementEvent());
            },
            icon: Icon(Icons.add)),
        IconButton(
            onPressed: () {
              BlocProvider.of<ContorBloc>(context).add(DecrementEvent());
            },
            icon: Icon(Icons.remove)),
        IconButton(
            onPressed: () {
              BlocProvider.of<ContorBloc>(context).add(UpdatEvent());
            },
            icon: Icon(Icons.update)),
      ],
    );
  }
}
