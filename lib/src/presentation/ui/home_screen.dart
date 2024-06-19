import 'package:flutter/material.dart';
import 'package:onatili_test/src/config/router/app_route.dart';
import 'package:onatili_test/src/presentation/ui/test_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Bosh sahifa",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Colors.white
        ),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: (){
              context.pushJust(const TestScreen());
            },
            child: Container(
              height: 100,
              width: width,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Container(
                height: 90,
                width: width,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 15),
                decoration: const BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Text("Boshlash",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ),),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
