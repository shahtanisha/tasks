import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class ApiController extends GetxController {
  var list = [].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchApi();
    super.onInit();
  }

  void fetchApi() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      if (response.statusCode == 200) {
        list.value = response.data;
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      isLoading(false);
    }
  }
}

class GetApiList extends StatelessWidget {
  const GetApiList({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiController controller = Get.put(ApiController());

    return Scaffold(
        appBar: AppBar(
          title: const Text('API List'),
        ),
        body: Obx(() 
        {
          if (controller.isLoading == true) {
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Shimmer.fromColors(
                  baseColor: Colors.black12,
                  highlightColor: Colors.black26,
                  child: ListTile(
                    title: Container(
                      height: 18,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                    subtitle: Column(
                      children: [
                        const SizedBox(height: 5,),
                        Container(
                          height: 10,
                          width: double.infinity,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          height: 10,
                          width: double.infinity,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          height: 10,
                          width: double.infinity,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return ListView.builder(
              itemCount: controller.list.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(controller.list[index]['title'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  subtitle: Text(controller.list[index]['body']),
                );
              },
            );
          }
        }));
  }
}
