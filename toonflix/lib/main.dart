import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/hotel.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey Tei',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Welcome',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Jeonbuk kunsan',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      text: 'Search',
                      bgColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Back',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Theme',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Hotel(
                  hotelName: 'Classic',
                  hotelPrice: '360,000',
                  hotelImage: AssetImage('assets/sinbiHotel.jpg'),
                  textColor: Color.fromARGB(255, 48, 137, 210),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Hotel(
                  hotelName: 'Modern',
                  hotelPrice: '330,000',
                  hotelImage: AssetImage('assets/sin.jpg'),
                  textColor: Color.fromARGB(255, 248, 201, 61),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Hotel(
                  hotelName: 'Nordic',
                  hotelPrice: '470,000',
                  hotelImage: AssetImage('assets/sinbi.jpg'),
                  textColor: Color.fromARGB(197, 211, 143, 143),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Hotel(
                  hotelName: 'Asia',
                  hotelPrice: '560,000',
                  hotelImage: AssetImage('assets/oncheon.jpg'),
                  textColor: Color.fromARGB(197, 255, 255, 255),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Hotel(
                  hotelName: 'Vintage',
                  hotelPrice: '420,000',
                  hotelImage: AssetImage('assets/vintage.jpg'),
                  textColor: Color.fromARGB(255, 172, 135, 121),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
