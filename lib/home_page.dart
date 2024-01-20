import 'package:flutter/material.dart';
import 'package:introduction_page/demoData.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  // double h = MediaQuery.of(context).height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          SizedBox(
            height: 500,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  height: 500,
                  child: Image.network(
                    demoData[index]['imageUrl'],
                  ),
                );
              },
              itemCount: demoData.length,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              demoData.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: MyAnimatedContainer(isActive: _selectedIndex == index),
              ),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}

class MyAnimatedContainer extends StatelessWidget {
  const MyAnimatedContainer({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 6,
      width: isActive ? 20 : 6,
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
          color: isActive ? Colors.red[300] : Colors.grey,
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
