import 'package:flutter/material.dart';
import 'package:ifsp_app/charts/donutChart.dart';

class Chart {
  Map<String, double> _dataMap = {
    'progress': 70,
  };

  List<Color> _colorList = [Colors.green];

  Map<String, double> get dataMap {
    return _dataMap;
  }

  List<Color> get colorList {
    return _colorList;
  }

  Widget getDonutChart() {
    return DonutChart(_dataMap, _colorList);
  }
}
