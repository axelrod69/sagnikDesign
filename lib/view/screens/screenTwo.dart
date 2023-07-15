import 'package:flutter/material.dart';

import '../../utils/routes/routeNames.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwoState createState() => ScreenTwoState();
}

class ScreenTwoState extends State<ScreenTwo> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    // TODO: implement build
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.05),
            child: SizedBox(
              width: double.infinity,
              height: height * 0.36,
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: height * 0.1,
                    backgroundColor: Colors.green,
                    backgroundImage:
                        const AssetImage('assets/images/android.jpg'),
                  ),
                  SizedBox(height: height * 0.01),
                  const Text('Sagnik Goswami',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  // SizedBox(height: height * 0.005),
                  const Text('sagnik.goswami@gmail.com',
                      style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(height: height * 0.01),

                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.32, right: width * 0.32),
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, RouteNames.thirdPage),
                      child: Container(
                        width: double.infinity,
                        height: height * 0.06,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(80)),
                        child: const Center(
                          child: Text('Sign In With Email',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.08),
                child:
                    Text('Notifications', style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
          SizedBox(height: height * 0.005),
          Container(
            width: double.infinity,
            height: height * 0.08,
            margin: EdgeInsets.only(left: width * 0.08, right: width * 0.08),
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 81, 80, 80),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Turn On Notifications',
                    style: TextStyle(
                        color:
                            isClicked == false ? Colors.grey : Colors.yellow)),
                // Switch(
                //     value: isClicked,
                //     onChanged: (value) {
                //       setState(() {
                //         isClicked = value;
                //       });
                //       print('isClicked Value; $isClicked');
                //     })
                InkWell(
                  onTap: () {
                    setState(() {
                      isClicked = !isClicked;
                    });
                    print('isClicked Value: $isClicked');
                  },
                  child: Container(
                    width: width * 0.2,
                    height: height * 0.02,
                    color: Colors.red,
                    child: const Text('Click',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white)),
                  ),
                )
                // Switch(
                //     value: isClicked,
                //     onChanged: (value) {
                //       setState(() {
                //         isClicked = value;
                //       });
                //       // isClicked = value;

                //       print('isClicked: $isClicked');
                //     })
              ],
            ),
          )
        ],
      ),
    ));
  }
}
