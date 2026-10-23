import 'package:cadence/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Cadence', home: HabitDetails());
  }
}

class HabitDetails extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.primaryText,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: AppColors.primaryText,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CircleAvatar(
                  backgroundColor: AppColors.surface,
                  radius: 40,
                  child: Icon(Icons.code, color: AppColors.primaryText),
                ),
                SizedBox(height: 10),
                Text(
                  "Code",
                  style: TextStyle(fontSize: 24, color: AppColors.primaryText, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 2),
                Text(
                  "A little progress each day.",
                  style: TextStyle(fontSize: 14, color: AppColors.primaryText),
                ),
                SizedBox(height: 20),
                Card.outlined(
                  color: AppColors.surface,
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.border),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            spacing: 5,
                            children: [
                              Text(
                                "7",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              Text(
                                "Current streak",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.secondaryText,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: AppColors.border,
                          width: 2,
                          height: 70,
                        ),
                        Expanded(
                          child: Column(
                            spacing: 5,
                            children: [
                              Text(
                                "12",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              Text(
                                "Total Completions",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.secondaryText,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: AppColors.border,
                          width: 2,
                          height: 70,
                        ),
                        Expanded(
                          child: Column(
                            spacing: 5,
                            children: [
                              Text(
                                "86%",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              Text(
                                "Completion rate",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.secondaryText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Card.outlined(
                  color: AppColors.surface,
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.border),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 10,
                                children: [
                                  Icon(Icons.edit_outlined, color: AppColors.secondaryText,),
                                  Text(
                                "Edit habit",
                                style: TextStyle(color: AppColors.secondaryText, fontSize: 17, fontWeight: FontWeight.w600),
                              ),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 20, color: AppColors.secondaryText,)
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 10,
                                children: [
                                  Icon(Icons.archive_outlined, color: AppColors.secondaryText,),
                                  Text(
                                "Archive habit",
                                style: TextStyle(color: AppColors.secondaryText, fontSize: 17, fontWeight: FontWeight.w600),
                              ),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 20, color: AppColors.secondaryText,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
