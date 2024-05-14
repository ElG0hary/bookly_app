import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
