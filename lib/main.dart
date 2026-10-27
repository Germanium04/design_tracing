import 'package:flutter/material.dart';

void main() {
  runApp(const WaterTrackerApp());
}

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WaterTrackerScreen(),
    );
  }
}

class WaterTrackerScreen extends StatelessWidget {
  const WaterTrackerScreen({super.key});

  static const Color primaryBlue = Color(0xFF3F5FC4);
  static const Color deepBlue = Color(0xFF2849B8);
  static const Color dropBlue = Color(0xFF3D9BFF);
  static const Color background = Color(0xFFEEF1F5);
  static const Color chipBlue = Color(0xFFDCE8FC);
  static const Color darkText = Color(0xFF1A1F2B);
  static const Color greyText = Color(0xFF5F6B7A);

  @override
  Widget build(BuildContext context) {
    final double marginHorizontal = MediaQuery.sizeOf(context).width * 0.1;
    final double marginVertical = MediaQuery.sizeOf(context).height * 0.06;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: primaryBlue,
        centerTitle: true,
        title: const Text(
          'Water Tracker',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
              horizontal: marginHorizontal,
              vertical: marginVertical,
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.water_drop, size: 72, color: dropBlue),
            const SizedBox(height: 16),
            const Text(
              'Stay Hydrated!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: darkText,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Build a healthy daily habit',
              style: TextStyle(fontSize: 16, color: greyText),
            ),
            const SizedBox(height: 24),

            // Daily Water Goal card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  Text(
                    'Daily Water Goal',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF3A4150),
                    ),
                  ),
                  Text(
                    '8',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: deepBlue,
                      height: 1.1,
                    ),
                  ),
                  Text(
                    'glasses per day',
                    style: TextStyle(fontSize: 16, color: greyText),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            const _InfoChip(text: 'Drink water regularly'),
            const SizedBox(height: 12),
            const _InfoChip(text: 'Bring your water bottle'),
            const SizedBox(height: 16),

            const Text(
              'Every glass counts!',
              style: TextStyle(fontSize: 13, color: greyText),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final String text;

  const _InfoChip({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: WaterTrackerScreen.chipBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: WaterTrackerScreen.deepBlue,
          ),
        ),
      ),
    );
  }
}