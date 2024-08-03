import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getstatemanagement/Controller/CounterController.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Countercontroller countercontroller = Get.put(Countercontroller());
    TextEditingController namecontroller = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Obx(
            () => Text(
              countercontroller.count.value.toString(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      countercontroller.increment();
                    },
                    child: Container(
                      height: 50,
                      color: Colors.amber,
                      child: Center(child: Text("Increase")),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      countercontroller.decrement();
                    },
                    child: Container(
                      height: 50,
                      color: Colors.redAccent,
                      child: Center(child: Text("Decrease")),
                    ),
                  ),
                ),
              ],
            ),
          ),
        
        ],
      ),
    );
  }
}
