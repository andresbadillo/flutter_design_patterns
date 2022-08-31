import 'package:flutter/material.dart';
import 'package:design_patterns/widgets/background.dart';
import 'package:design_patterns/widgets/page_title.dart';
import '../widgets/card_table.dart';
import '../widgets/custom_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          //Background
          Background(),
          //HomeBody ScrollView
          _HomeBody()
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          //Titulos
          PageTitle(),
          //Card Table
          CardTable(),
        ],
      ),
    );
  }
}
