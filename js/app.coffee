
  svg = new SVG $('.paper').get(0)

  svg.showBorder()

  svg.line 0, 0, 100, 200,
    stroke: 'red'

  svg.circle 10, 10, 50,
    fill: 'black'

  svg.rect 85, 70, 30, 50,
    fill: '#eeaacc'
    stroke: 'black'
    'stroke-width': 2