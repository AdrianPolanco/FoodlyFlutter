import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class CategoryController extends GetxController{
  RxString _category = "".obs;
  RxString _title = "".obs;

  String get categoryValue => _category.value;
  set updateCategory(String value){
    _category.value = value;
  }

  String get titleValue => _title.value;
  set updateTitle(String value){
    _title.value = value;
  }
}