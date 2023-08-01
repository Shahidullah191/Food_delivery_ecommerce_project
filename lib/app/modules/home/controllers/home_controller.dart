import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  CarouselController carouselController = CarouselController();


  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ].obs;


  String?  selectedValue;

  String? groupValue;

  ValueChanged<String?> valueChangedHandler() {
    return (value) {
      selectedValue = value;
      update();
    };
  }

  final current = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
