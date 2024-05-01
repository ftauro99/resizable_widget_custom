import 'package:flutter/material.dart';
import 'resizable_widget_controller.dart';

class SeparatorArgsInfo extends SeparatorArgsBasicInfo {
  final ResizableWidgetController parentController;

  SeparatorArgsInfo(this.parentController, SeparatorArgsBasicInfo basicInfo)
      : super.clone(basicInfo);
}

class SeparatorArgsBasicInfo {
  final int index;
  final bool isHorizontalSeparator;
  final bool isDisabledSmartHide;
  final double size;
  final Color color;
  final bool shouldIncludeDot; // Add this line
  final Color dotColor; // Add this line

  const SeparatorArgsBasicInfo(
    this.index,
    this.isHorizontalSeparator,
    this.isDisabledSmartHide,
    this.size,
    this.color,
    this.shouldIncludeDot, // Add this line
    this.dotColor, // Add this line
  );

  SeparatorArgsBasicInfo.clone(SeparatorArgsBasicInfo info)
      : index = info.index,
        isHorizontalSeparator = info.isHorizontalSeparator,
        isDisabledSmartHide = info.isDisabledSmartHide,
        size = info.size,
        color = info.color,
        shouldIncludeDot = info.shouldIncludeDot, // Add this line
        dotColor = info.dotColor; // Add this line
}
