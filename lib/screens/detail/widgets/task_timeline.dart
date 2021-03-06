import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeline extends StatelessWidget {
  final Map<String, dynamic> detail;
  TaskTimeline(this.detail);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(children: [_buildTimeLine(detail['tlColor'])]),
    );
  }

  Widget _buildTimeLine(
    Color color,
  ) {
    return Container(
      height: 100,
      width: 20,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
            indicatorXY: 0,
            width: 15,
            indicator: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(width: 5, color: color)),
            )),
        afterLineStyle: LineStyle(thickness: 2, color: color),
      ),
    );
  }
}
