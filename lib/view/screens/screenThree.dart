import 'package:design_one/utils/routes/routeNames.dart';
import 'package:flutter/material.dart';

import '../widgets/screenThreeWidgets/allList.dart';
import '../widgets/screenThreeWidgets/favourites.dart';

class ScreenThree extends StatefulWidget {
  ScreenThreeState createState() => ScreenThreeState();
}

class ScreenThreeState extends State<ScreenThree> {
  TextEditingController search = TextEditingController();
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, RouteNames.fourthPage,
            //This is how we send data to the defined page(In form Of A Map. Also, we need to define the arugument definition on the route page as well)
            arguments: {'dataSent': search.text}),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: height * 0.05,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.book, color: Colors.amber),
            Icon(Icons.star, color: Colors.red),
            Icon(Icons.start, color: Colors.green)
          ],
        ),
      ),
      appBar: AppBar(
        title:
            const Text('Daily Progress', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red.withOpacity(0.0),
        elevation: 0.0,
        toolbarHeight: 80.0,
        centerTitle: true,
        leading: Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.fromLTRB(5, 10, 0, 10),
          padding: const EdgeInsets.only(left: 8),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          child: const Icon(Icons.arrow_back_ios),
        ),
        actions: const [
          Icon(Icons.search, size: 40),
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('assets/images/android.jpg'),
            ),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: width * 0.8,
              height: height * 0.06,
              padding: const EdgeInsets.fromLTRB(8, 2, 5, 2),
              margin: EdgeInsets.only(top: height * 0.02),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 183, 183, 183),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                controller: search,
                // initialValue: 'Search',
                style: TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  // labelStyle:
                  //     TextStyle(color: Color.fromARGB(255, 183, 183, 183))
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            Row(
              // mainAxisAlignment: MainAxisAlignment.st,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isClicked = false;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.1),
                    child: SizedBox(
                      child: isClicked == true
                          ? const Text('All',
                              style: TextStyle(color: Colors.grey))
                          : Container(
                              width: width * 0.2,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Center(
                                child: Text('All',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.05),
                InkWell(
                  onTap: () {
                    setState(() {
                      isClicked = true;
                    });
                  },
                  child: SizedBox(
                    child: isClicked == false
                        ? const Text('Favourites',
                            style: TextStyle(color: Colors.grey))
                        : Container(
                            width: width * 0.2,
                            height: height * 0.05,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                              child: Text('Favourites',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                  ),
                )
              ],
            ),
            SizedBox(height: height * 0.02),
            isClicked == false ? AllList() : FavouriteList()
          ],
        ),
      ),
    );
  }
}
