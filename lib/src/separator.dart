import 'package:flutter/material.dart';
import 'separator_args_info.dart';
import 'separator_controller.dart';

class Separator extends StatefulWidget {
  final SeparatorArgsInfo info;

  const Separator(
    this.info, {
    Key? key,
  }) : super(key: key);

  @override
  _SeparatorState createState() => _SeparatorState();
}

class _SeparatorState extends State<Separator> {
  late SeparatorArgsInfo _info;
  late SeparatorController _controller;

  @override
  void initState() {
    super.initState();

    _info = widget.info;
    _controller =
        SeparatorController(widget.info.index, widget.info.parentController);
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onPanUpdate: (details) => _controller.onPanUpdate(details, context),
        onDoubleTap: () => _controller.onDoubleTap(),
        child: Stack(
          children: [
            // Container(
            //   width: _info.isHorizontalSeparator ? double.infinity : _info.size,
            //   height: _info.isHorizontalSeparator ? _info.size : double.infinity,
            //   color: _info.color,
            // ),
            if (_info.shouldIncludeDot)
              Align(
                alignment: Alignment.center,
                child: MouseRegion(
                  cursor: _info.isHorizontalSeparator
                      ? SystemMouseCursors.resizeRow
                      : SystemMouseCursors.resizeColumn,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: _info.size,
                        height: double.infinity,
                        color: widget.info.color,
                      ),
                      Container(
                        width: _info.size,
                        height: 12,
                        decoration: BoxDecoration(
                            color: _info.dotColor,
                            border:
                                Border.all(color: _info.dotColor, width: 1)),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      );
}
