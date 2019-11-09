#' @keywords internal
pointToLayerFun <- function() {
  htmlwidgets::JS("
function(data, latlng) {
  var options = this;
  var styleOptions = {};

  Object.keys(options.styleOptions).forEach(function(ky) {
    if(typeof options.styleOptions[ky] === 'function') {
      styleOptions[ky] = options.styleOptions[ky](data);
    } else {
      styleOptions[ky] = options.styleOptions[ky];
    }
  })
  return L.circleMarker(latlng, styleOptions);
}
"
  )
}

#' @keywords internal
formatOutputFun <- function() {
  htmlwidgets::JS("
function(date) {
  var dt = new Date(date); return dt.toDateString() + '<br>' + dt.toLocaleTimeString()
}
  "
  )
}
#' Timeline Options Helper
#'
#' @param getInterval \code{htmlwidgets::JS} function that returns an object with
#'          \code{start} and \code{end} properties to specify the start and end
#'          of the timeline range.  See
#'          \href{https://github.com/skeate/Leaflet.timeline#getinterval-function----optional}{getInterval}.
#' @param pointToLayer \code{htmlwidgets::JS} function that determines what is drawn
#'          on the map.  By default, a circle marker will be drawn.  See
#'          \href{https://leafletjs.com/reference-1.5.0.html#geojson-pointtolayer}{pointToLayer}.
#' @param styleOptions \code{list} from \code{link{styleOptions}}.
#' @param drawOnSetTime \code{logical} to draw when time is set.  Default is \code{TRUE}.  See
#'          \href{https://github.com/skeate/Leaflet.timeline#drawonsettime-boolean----optional-default-true}{drawOnSetTime}.
#'
#' @return \code{list}
#' @seealso \code{\link{addTimeline}}
#' @export

timelineOptions <- function(
  getInterval = NULL,
  pointToLayer = pointToLayerFun(),
  styleOptions = leaftime::styleOptions(),
  drawOnSetTime = NULL
) {
  Filter(Negate(is.null),list(
    getInterval = getInterval,
    pointToLayer = pointToLayer,
    styleOptions = styleOptions,
    drawOnSetTime = drawOnSetTime
  ))
}

#' Timeline Style Options Helper
#'
#' @param radius \code{number} to specify radius of drawn circle.
#' @param color,stroke,fillColor valid \code{CSS} color the circle.
#'           \code{fill} and/or \code{stroke} will
#'           override \code{color}.
#' @param fill \code{logical} to determine if drawn will be filled with \code{color}.
#' @param fillOpacity \code{number} between 0 and 1 to set opacity of the drawn circle.
#'
#' @return \code{list}
#' @seealso \code{\link{addTimeline}}
#' @export
styleOptions <- function(
  radius = 3,
  color = NULL,
  stroke = TRUE,
  fill = TRUE,
  fillColor = NULL,
  fillOpacity = NULL
) {
  Filter(Negate(is.null), list(
    radius = radius,
    color = color,
    stroke = stroke,
    fill = fill,
    fillColor = fillColor,
    fillOpacity = fillOpacity
  ))
}

#' Timeline Slider Options Helper
#'
#' @param start \code{number} that will be the starting value of the slider.
#' @param end \code{number} that will be the ending value of the slider.
#' @param position \code{string} that will be the position of the timeline.  See
#'          \href{https://leafletjs.com/reference-1.5.0.html#control-position}{position options}.
#' @param formatOutput \code{htmlwidgets::JS} function that outputs the date as a string
#'          in the timeline.
#' @param enablePlayback \code{logical} to show playback controls.
#' @param enableKeyboardControls \code{logical} to allow playback to be controlled by
#'           the keyboard.
#' @param steps \code{number} for how many steps in the timeline.
#' @param duration \code{number} for the minimum time in milliseconds of the length of playback.
#' @param waitToUpdateMap \code{logical} to wait until user is finished before redrawing.
#' @param showTicks \code{logical} to show ticks on the slider.
#'
#' @return \code{list}
#' @seealso \code{\link{addTimeline}}
#' @export
sliderOptions <- function(
  start = NULL,
  end = NULL,
  position = NULL,
  formatOutput = formatOutputFun(),
  enablePlayback = NULL,
  enableKeyboardControls = NULL,
  steps = NULL,
  duration = NULL,
  waitToUpdateMap = NULL,
  showTicks = NULL
) {
  Filter(Negate(is.null),list(
    start = start,
    end = end,
    position = position,
    formatOutput = formatOutput,
    enablePlayback = enablePlayback,
    enableKeyboardControls = enableKeyboardControls,
    steps = steps,
    duration = duration,
    waitToUpdateMap = waitToUpdateMap,
    showTicks = showTicks
  ))
}
