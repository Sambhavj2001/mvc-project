import 'package:get/get.dart';
import '../model/post.dart';
import '../services/remote_services.dart';

class HomePageController extends GetxController {
  var datums = List<Datum>.empty(growable: true).obs;
  var datums1 = List<Datum>.empty(growable: true).obs;
  var datums2 = List<Datum>.empty(growable: true).obs;
  var datums3 = List<Datum>.empty(growable: true).obs;
  var datums4 = List<Datum>.empty(growable: true).obs;
  var isLoaded = false.obs;
  var isLoaded1 = false.obs;
  var isLoaded2 = false.obs;
  var isLoaded3 = false.obs;
  var isLoaded4 = false.obs;
  RemoteService remoteService = RemoteService();

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    datums.value = (await remoteService.getData())!;
    if (datums != null) {
      isLoaded.value = true;
    }
    datums1.value = (await remoteService.getData1())!;
    if (datums != null) {
      isLoaded1.value = true;
    }
    datums2.value = (await remoteService.getData2())!;
    if (datums != null) {
      isLoaded2.value = true;
    }
    datums3.value = (await remoteService.getData3())!;
    if (datums != null) {
      isLoaded3.value = true;
    }
    datums4.value = (await remoteService.getData4())!;
    if (datums != null) {
      isLoaded4.value = true;
    }
  }
}