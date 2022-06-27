import 'dart:math';
import 'package:provider/provider.dart';
import 'package:news/controller/homepage_controller.dart';
import 'package:news/provider/theme_provider.dart';
import 'package:news/services/remote_services.dart';
import 'package:news/view/read_more.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/widget/change_theme_button_widget.dart';

import '../model/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List<Widget>tabs = [];
  final homePageController = Get.put(HomePageController());

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context){
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
    ? 'DarkTheme'
    : 'LightTheme';
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.dark_mode_outlined),
            iconTheme: Theme.of(context).iconTheme,
            actions: [
              ChangeThemeButtonWidget(
              ),
            ],
            bottom: TabBar(
             // iconTheme: Theme.of(context).iconTheme,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.sports
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.science,
                  ),
                ),
                Tab(
                  icon: Icon(
                      Icons.business
                  ),
                ),
                Tab(
                  icon: Icon(
                      Icons.health_and_safety
                  ),
                ),
                Tab(
                  icon: Icon(
                      Icons.movie
                  ),
                ),
              ],
            ),
            title: const Text(
              "News",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Obx(
                () => TabBarView(
              children: [
                Visibility(
                  visible: homePageController.isLoaded.value,
                  child: ListView.builder(
                    itemCount: homePageController.datums.value.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // width: 60,
                                    alignment: AlignmentDirectional.center,
                                    height: 200,
                                    child: Image.network(homePageController
                                        .datums.value[index].imageUrl!),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  Text(
                                    homePageController
                                        .datums.value[index].title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    homePageController
                                        .datums.value[index].content,
                                    maxLines: 4,
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ReadMore(index,
                                              homePageController.datums.value),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Read More',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                Visibility(
                  visible: homePageController.isLoaded1.value,
                  child: ListView.builder(
                    itemCount: homePageController.datums1.value.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // width: 60,
                                    alignment: AlignmentDirectional.center,
                                    height: 200,
                                    child: Image.network(homePageController
                                        .datums1.value[index].imageUrl!),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  Text(
                                    homePageController
                                        .datums1.value[index].title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    homePageController
                                        .datums1.value[index].content,
                                    maxLines: 4,
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ReadMore(index,
                                              homePageController.datums1.value),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Read More',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                Visibility(
                  visible: homePageController.isLoaded2.value,
                  child: ListView.builder(
                    itemCount: homePageController.datums2.value.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // width: 60,
                                    alignment: AlignmentDirectional.center,
                                    height: 200,
                                    child: Image.network(homePageController
                                        .datums2.value[index].imageUrl!),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  Text(
                                    homePageController
                                        .datums2.value[index].title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    homePageController
                                        .datums2.value[index].content,
                                    maxLines: 4,
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ReadMore(index,
                                                homePageController.datums2.value),
                                          )
                                      );
                                    },
                                    child: Text(
                                      'Read More',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                Visibility(
                  visible: homePageController.isLoaded3.value,
                  child: ListView.builder(
                    itemCount: homePageController.datums3.value.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // width: 60,
                                    alignment: AlignmentDirectional.center,
                                    height: 200,
                                    child: Image.network(homePageController
                                        .datums3.value[index].imageUrl!),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  Text(
                                    homePageController
                                        .datums1.value[index].title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    homePageController
                                        .datums1.value[index].content,
                                    maxLines: 4,
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ReadMore(index,
                                              homePageController.datums3.value),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Read More',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                Visibility(
                  visible: homePageController.isLoaded4.value,
                  child: ListView.builder(
                    itemCount: homePageController.datums4.value.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // width: 60,
                                    alignment: AlignmentDirectional.center,
                                    height: 200,
                                    child: Image.network(homePageController
                                        .datums4.value[index].imageUrl!),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  Text(
                                    homePageController
                                        .datums4.value[index].title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    homePageController
                                        .datums4.value[index].content,
                                    maxLines: 4,
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ReadMore(index,
                                              homePageController.datums4.value),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Read More',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}