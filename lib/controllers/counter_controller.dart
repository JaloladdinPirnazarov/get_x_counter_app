import 'package:get/get.dart';

class CounterController extends GetxController{
  var count = 0.obs;

  void increment(){
    count.value ++;
  }

  void decrement(){
    if(count>0){
      count.value --;
    }
  }

  void reset(){
    count.value = 0;
  }

}