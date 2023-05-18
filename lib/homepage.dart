import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/contor_bloc.dart';
import 'home_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 66, 62, 62),
      appBar: AppBar(title: Text('Contor App')),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        BlocBuilder<ContorBloc, ContorState>(builder: (context, state) {
          if (state is ContorInitial) {
            return Text("0");
          } else if (state is contorchangeValeur) {
            return Text(state.cont.toString());
          } else {
            return SizedBox();
          }
        }),
        HomeWidget(),
      ]),
    );
  }
}
