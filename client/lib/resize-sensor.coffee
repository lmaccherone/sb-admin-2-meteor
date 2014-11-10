class ResizeSensor

  @toSense = []

  @add: (id) ->
    ResizeSensor.toSense.push(id)
    ResizeSensor.set(id)

  @resizeEventHandler: () ->
    for id in ResizeSensor.toSense
      ResizeSensor.set(id)

  @set: (id) ->
    Session.set(id + '-width', $('#' + id).width())

  constructor: () ->
    $(window).bind('resize', ResizeSensor.resizeEventHandler)

this.ResizeSensor = ResizeSensor