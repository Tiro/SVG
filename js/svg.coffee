
class SVG

  ns = "http://www.w3.org/2000/svg"

  constructor: (@containerElement) ->
    @el = document.createElementNS ns, 'svg'
    @containerElement.appendChild @el

  showBorder: ->
    strokeWidth = 1
    @rect 0, 0, @containerElement.clientWidth - strokeWidth, @containerElement.clientHeight - strokeWidth,
      stroke: 'blue'
      fill: 'transparent'
      'stroke-width': strokeWidth

  shape: (name, attributes = {}, options = {}) ->
    shape = document.createElementNS ns, name
    for key, value of attributes
      shape.setAttribute key, value
    for key, value of options
      shape.setAttribute key, value
    @el.appendChild shape

  line: (x1, y1, x2, y2, options) ->
    # <line x1="5" y1="5" x2="90" y2="90" />
    @shape 'line', {x1:x1, y1:y1, x2:x2, y2:y2}, options

  rect: (x, y, width, height, options) ->
    # <rect x="60" y="95" height="30" width="50" />
    @shape 'rect', {x:x, y:y, height:height, width:width}, options

  circle: (x, y, r, options) ->
    # <circle cx="80" cy="50" r="40"/>
    @shape 'circle', {cx:x, cy:y, r:r}, options


window.SVG = SVG