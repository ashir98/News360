import 'package:get/get.dart';

class NavController extends GetxController {
  RxInt _index = 0.obs;
  int get getIndex => _index.value;

  void changeIndex(int value){
    _index.value = value;
  }

}