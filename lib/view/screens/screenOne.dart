import 'package:design_one/utils/routes/routeNames.dart';
import 'package:design_one/view/screens/screenTwo.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    // TODO: implement build
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height:
                  width >= 320 && width <= 450 ? height * 0.25 : height * 0.2,
              // color: Colors.red,
              child: Image.asset('assets/images/android.jpg', width: 250),
            ),
            SizedBox(height: height * 0.04),
            Container(
              width: double.infinity,
              // color: Colors.blue,
              padding: EdgeInsets.only(left: width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Hello',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text('My Name Is',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text('Sagnik',
                      style: TextStyle(color: Colors.white, fontSize: 30))
                ],
              ),
            ),
            SizedBox(height: height * 0.04),
            InkWell(
              onTap: () => Navigator.pushNamed(context, RouteNames.secondPage),
              child: Container(
                width: double.infinity,
                height: height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text('Sign In With Email',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(height: height * 0.04),
            Container(
              width: double.infinity,
              height: height * 0.08,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(right: width * 0.04),
                      child: Container(
                        height: double.infinity,
                        // color: Colors.pink,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2),
                            color: Colors.black.withOpacity(0),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text('Google',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.04),
                      child: Container(
                          height: double.infinity,
                          // color: Colors.green,
                          // padding: EdgeInsets.only(right: width * 0.01),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              color: Colors.black.withOpacity(0),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text('Facebook',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          )),
                    ),
                  ),
                  // Container(
                  //   width: double.infinity,
                  //   height: height * 0.08,
                  //   decoration: BoxDecoration(
                  //       color: Colors.blue,
                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: const Center(
                  //     child: Text('Sign In With Email',
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.bold)),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(height: height * 0.04),
            const Text('Please Agree To Sign In',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
            // Image.asset('assets/images/android.jpg', height: 250, width: 250)
          ],
        ),
      ),
    );
  }
}
