import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x_counter_app/controllers/counter_controller.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter with GetX"),
      ),
      body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      controller.increment();
                    },
                    icon: const Icon(
                      Icons.plus_one,
                      color: Colors.lightGreen,
                    )),
                Container(
                    padding: const EdgeInsets.all(7),
                    child:  Obx(()=>Text(
                      controller. count.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ))
                ),
                IconButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    icon: const Icon(
                      Icons.exposure_minus_1,
                      color: Colors.red,
                    )),
              ],
            ),
            IconButton(
                onPressed: (){
                  controller.reset();
                },
                icon: const Icon(Icons.restart_alt, color: Colors.white,))
          ],
        ),
      )),
    );
  }
}
