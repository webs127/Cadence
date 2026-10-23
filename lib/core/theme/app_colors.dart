import 'package:flutter/material.dart';
extension HexColor on Color {
static Color hexString(String color) {
color = color.replaceAll('#','');
if (color.length == 6) {
color = 'FF$color';
}
return Color(int.parse(color, radix: 16));
}
}
class AppColors {
static Color primary = HexColor.hexString('#111A23');
static Color secondary = HexColor.hexString('#19222C');
static Color primaryText = HexColor.hexString('#F1F4F8');
static Color secondaryText = HexColor.hexString('#8F9DAB');
static Color surface = HexColor.hexString('#212C37');
static Color border = HexColor.hexString('#3B4858');
static Color success = HexColor.hexString('#63D6B2');
static Color accent = HexColor.hexString('#A3BBDC');
static Color highlight = HexColor.hexString('#C8D3E2');

}
