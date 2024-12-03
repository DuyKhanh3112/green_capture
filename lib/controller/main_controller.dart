import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_capture/objs/image_detect.dart';
import 'package:green_capture/views/green_capture/green_capture_page.dart';
import 'package:green_capture/views/green_capture/image_management_screen.dart';
import 'package:green_capture/views/home_page.dart';
import 'package:green_capture/views/smart_farm/picture_page.dart';
import 'package:image_picker/image_picker.dart';

class MainController extends GetxController {
  // loading state variants
  RxBool detecting = false.obs;
  // data variants
  Rx<XFile> image = XFile('').obs;
  RxList<Map<String, dynamic>> result = <Map<String, dynamic>>[].obs;
  RxList<ImageDetect> listImageDetect = <ImageDetect>[].obs;
  RxBool clickDetect = false.obs;

  RxBool isLoading = false.obs;

  List<Widget> pages = [
    const HomePage(),
    const PicturePage(),
    const ImageManagementScreen(),
    const GreenCapturePage(),
  ];
  List<String> titles = [
    'Trang chủ',
    'Dự đoán hình ảnh',
    'Thêm dữ liệu',
    'Quản lý hình ảnh',
  ];
  RxInt numPage = 0.obs;
}
