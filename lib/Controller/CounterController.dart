
import 'package:get/get.dart';

class Countercontroller extends GetxController{

   RxInt count = 0.obs;
   RxString name = "".obs;
   void increment(){
    count++;
   }
   void decrement(){
    count--;
   }

}