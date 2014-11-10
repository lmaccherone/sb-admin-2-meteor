Template.chart1.rendered = () ->
  ResizeSensor.add('chart1-1')

Template.chart1.helpers(
  rectHeight: () ->
    return 57

  rectWidth: () ->
    chartWidth = Session.get('chart1-1-width') or 0
    return chartWidth / 3
)