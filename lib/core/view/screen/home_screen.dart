import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/core/view_model/HomeVM.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return // ChangeNotifierProvider<hom>();
        ChangeNotifierProvider<HomeVM>(
      create: (context) => HomeVM(),
      child: Scaffold(
        floatingActionButton: Consumer<HomeVM>(builder: (ctx, h, child) {
          return FloatingActionButton(
            onPressed: () {
              h.addToCounter();
            },
            child: Icon(Icons.add),
          );
        }),
        appBar: AppBar(title: Text("Home Screen")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<HomeVM>(builder: (ctx, h, child) {
              return Center(
                  child: Text(
                "${h.counter}",
                style: TextStyle(fontSize: 50),
              ));
            })
          ],
        ),
      ),
    );
  }
}
