import 'package:bloc_countr_app/bloc/contor_bloc.dart';
import 'package:bloc_countr_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(ContorApp());
}

class ContorApp extends StatelessWidget {
  const ContorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ContorBloc(),
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: Homepage()));
  }
}
