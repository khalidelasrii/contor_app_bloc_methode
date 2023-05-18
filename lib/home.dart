import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/contor_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Contor APP with bloc packege')),
          backgroundColor: const Color.fromARGB(255, 7, 255, 139),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          BlocBuilder<ContorBloc, ContorState>(
            builder: (context, state) {
              if (state is ContorInitial) {
                return const Text("0");
              } else if (state is CounterValueChangeState) {
                return Text(state.cnt.toString());
              } else {
                return SizedBox();
              }
              return Container();
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      BlocProvider.of<ContorBloc>(context)
                          .add(IncrementEvent());
                    },
                    icon: const Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      BlocProvider.of<ContorBloc>(context).add(UpdatEvent());
                    },
                    icon: const Icon(Icons.update)),
                IconButton(
                    onPressed: () {
                      BlocProvider.of<ContorBloc>(context)
                          .add(DecrementEvent());
                    },
                    icon: const Icon(Icons.remove)),
              ],
            ),
          )
        ]));
  }
}
