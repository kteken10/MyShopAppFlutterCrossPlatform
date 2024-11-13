import 'package:flutter/material.dart';
import 'package:myshop/constants/colors.dart';
import '../../ui/input_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, 
        elevation: 0, 
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Discover',
              style: TextStyle(
                color: Colors.black, 
                fontSize: 24,
              ),
            ),
          
            Container(
              padding: const EdgeInsetsDirectional.all(4),
              decoration: BoxDecoration(
                color: Colors.white, 
                border: Border.all(width: 1, color: AppColors.grayFineColor),
                shape: BoxShape.circle, 
              ),
              child: const Icon(
                Icons.shopping_bag_outlined, 
                color: Colors.black, 
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white, 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            InputField(
              controller: searchController,
              keyboardType: TextInputType.text,
              obscureText: false,
            ),
            const SizedBox(height: 20),
          
            const Center(
              child: Text(
                'Home Screen',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
