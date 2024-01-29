import 'package:eee/counter_widget.dart';
import 'package:eee/cubit_widget.dart';
import 'package:flutter/material.dart';

import 'second_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.black,
        ),
        title: const Text(
          'ICTHUB 2024',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(
            Icons.not_interested,
            color: Colors.black,
          ),
          Icon(
            Icons.brightness_low,
            color: Colors.black,
          ),
          Icon(
            Icons.safety_check_sharp,
            color: Colors.black,
          ),
        ],
      ),
      backgroundColor: const Color(0xff2D2F41),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.safety_check_sharp,
            color: Colors.white,
            size: 100,
          ),
          const CounterWidget(
            name: 'ahmed',
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CubitWidgetWithText(
                    icon: 'assets/apple.svg',
                    clr: Colors.white,
                    txt: 'Apple',
                  ),
                  CubitWidgetWithText(
                    icon:
                        'https://cdn-icons-png.flaticon.com/512/1077/1077114.png',
                    clr: Colors.white,
                    txt: 'Google',
                  ),
                  CubitWidgetWithText(
                    icon:
                        'https://cdn-icons-png.flaticon.com/512/1077/1077114.png',
                    clr: Colors.white,
                    txt: 'Facebook',
                  ),
                  CubitWidgetWithText(
                    icon: 'assets/ic_total_booking.png',
                    clr: Colors.white,
                    txt: 'BBB',
                  ),
                  CubitWidgetWithText(
                    icon: 'assets/ic_total_booking.png',
                    clr: Colors.green,
                    txt: 'BBB',
                  ),
                  CubitWidgetWithText(
                    icon: 'assets/ic_un_fill_wallet.png',
                    clr: Colors.blue,
                    txt: 'BBB',
                  ),
                  CubitWidgetWithText(
                    icon: 'assets/ic_verified.png',
                    clr: Colors.teal,
                    txt: 'BBB',
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePageTwo(),
                ),
              );
            },
            child: const Text('Go to Screen Two'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Go To Screen'),
          ),
        ],
      ),
    );
  }
}
