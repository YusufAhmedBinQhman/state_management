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
            }),
            Stack(
              children: [
                Container(height: 200, width: 200, color: Colors.red),
                Consumer<HomeVM>(builder: (ctx, h, child) {
                  return Positioned(
                      bottom: h.topDownM.toDouble(),
                      // top: h.topDownM.toDouble(),
                      // right: h.righLefttM.toDouble(),
                      left: h.righLefttM.toDouble(),
                      child:
                          Container(height: 50, width: 50, color: Colors.blue));
                }),
              ],
            ),
            Consumer<HomeVM>(builder: (ctx, h, child) {
              return ElevatedButton(
                  onPressed: () {
                    h.topMove();
                  },
                  onLongPress: () {
                    h.topMove();
                  },
                  child: Text("اعلى"));
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<HomeVM>(builder: (ctx, h, child) {
                  return ElevatedButton(
                      onPressed: () {
                        h.leftMove();
                      },
                      child: Text("يسار"));
                }),
                SizedBox(width: 50),
                Consumer<HomeVM>(builder: (ctx, h, child) {
                  return ElevatedButton(
                      onPressed: () {
                        h.rightMove();
                      },
                      child: Text("يمين"));
                }),
              ],
            ),
            Consumer<HomeVM>(builder: (ctx, h, child) {
              return ElevatedButton(
                  onPressed: () {
                    h.downMove();
                  },
                  child: Text("اسفل"));
            }),
          ],
        ),
      ),
    );
  }
}
