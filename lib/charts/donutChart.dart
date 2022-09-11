import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class DonutChart extends StatelessWidget {
  final Map<String, double> dataMap;
  final List<Color> colorList;

  const DonutChart(this.dataMap, this.colorList);

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      chartType: ChartType.ring,
      chartRadius: MediaQuery.of(context).size.width / 3,
      animationDuration: Duration(milliseconds: 800),
      baseChartColor: Color.fromARGB(255, 188, 204, 191),
      colorList: colorList,
      centerText: dataMap['progress'].toString() + '%',
      legendOptions: LegendOptions(showLegends: false),
      chartValuesOptions: ChartValuesOptions(showChartValues: false),
      initialAngleInDegree: 270,
      totalValue: 100,
    );
  }
}
