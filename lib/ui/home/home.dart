import 'package:cadence/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more, color: AppColors.primaryText),
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              AppColors.surface,
                            ),
                            overlayColor: WidgetStatePropertyAll(
                              AppColors.surface,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Show checklist",
                            style: TextStyle(color: AppColors.primaryText),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_today_outlined,
                            color: AppColors.primaryText,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back. David.",
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Small steps create big results.",
                      style: TextStyle(
                        color: AppColors.secondaryText,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Habits",
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "4 habits",
                          style: TextStyle(
                            color: AppColors.secondaryText,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: List.generate(4, (i) => CadenceHabitCard()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
        backgroundColor: AppColors.accent,
        child: Icon(Icons.add),
      ),
    );
  }
}

class CadenceHabitCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      margin: EdgeInsets.only(bottom: 8),
      color: AppColors.secondary,
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 10,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.surface,
                    child: Icon(Icons.code, color: AppColors.primaryText),
                  ),
                  Column(
                    spacing: 3,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Code",
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Text(
                            "7 day streak",
                            style: TextStyle(
                              color: AppColors.secondaryText,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.success,
                            ),
                            padding: EdgeInsets.all(5),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: AppColors.secondaryText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WavyBackground extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, 300),
      painter: _WavyBackgroundPainter(),
    );
  }
}

class _WavyBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.success
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height * 0.55);
    path.cubicTo(
      size.width * 0.1,
      size.height * 0.55,
      size.width * 0.1,
      size.height * 0.30,
      size.width * 0.25,
      size.height * 0.30,
    );
    path.cubicTo(
      size.width * 0.32,
      size.height * 0.28,
      size.width * 0.45,
      size.height * 0.40,
      size.width * 0.60,
      size.height * 0.35,
    );
    path.cubicTo(
      size.width * 0.68,
      size.height * 0.20,
      size.width * 0.78,
      size.height * 0.15,
      size.width * 0.85,
      size.height * 0.20,
    );
    path.cubicTo(
      size.width * 0.90,
      size.height * 0.23,
      size.width * 0.95,
      size.height * 0.18,
      size.width * 1,
      size.height * 0.18,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
