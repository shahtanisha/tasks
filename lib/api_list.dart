import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ApiList extends StatefulWidget {
  const ApiList({super.key});

  @override
  State<ApiList> createState() => _ApiListState();
}

var list;

class _ApiListState extends State<ApiList> {
  @override
  void initState() {
    super.initState();
    fetchApi();
  }

  void fetchApi() async {
    try {
      var response = await Dio()
          .get('https://jsonplaceholder.typicode.com/posts');
      if (response.statusCode == 200) {
        setState(() {
          list = response.data as List<dynamic>;
        });
      }
      else{
        print(response.statusCode);
      }
    } catch (e) {
      print('Err $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API List'),
      ),
      body: list == null
          ? ListView.builder(
              itemCount: 6, 
              itemBuilder: (BuildContext context, int index) {
                return Shimmer.fromColors(
                  baseColor: Colors.black12,
                  highlightColor: Colors.black26,
                  child: ListTile(
                    title: Container(
                      height: 10,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                    subtitle: Container(
                      height: 10,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            )
          : ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(list[index]['title']),
                  subtitle: Text(list[index]['body']),
                );
              },
            ),
    );
  }
}
