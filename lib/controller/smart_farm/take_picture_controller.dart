// import 'dart:developer';

// import 'package:camera/camera.dart';
// import 'package:get/get.dart';

// class TakePictureController extends GetxController {
//   late CameraController cameraController;
//   late Future<void> initializeControllerFuture;
//   RxBool isLoading = false.obs;

//   @override
//   void onInit() {
//     super.onInit();
//     cameraController = CameraController(
//         const CameraDescription(
//           name: '0',
//           lensDirection: CameraLensDirection.back,
//           sensorOrientation: -1,
//         ),
//         ResolutionPreset.medium);
//     initializeControllerFuture = cameraController.initialize();
//   }

//   @override
//   void dispose() {
//     cameraController.dispose();
//     super.dispose();
//   }

//   @override
//   void onClose() {
//     cameraController.dispose();
//     super.onClose();
//   }
// }
