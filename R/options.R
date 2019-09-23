#' Title
#'
#' @param getInterval
#' @param pointToLayer
#' @param drawOnSetTime
#'
#' @return
#' @export
#'
#' @examples
timelineOptions <- function(
  getInterval = NULL,
  pointToLayer = htmlwidgets::JS("
function(data, latlng) {
  return L.circleMarker(latlng, this.styleOptions);
}
"
  ),
  styleOptions = styleOptions(),
  drawOnSetTime = NULL
) {
  Filter(Negate(is.null),list(
    getInterval = getInterval,
    pointToLayer = pointToLayer,
    styleOptions = styleOptions,
    drawOnSetTime = drawOnSetTime
  ))
}

#' Title
#'
#' @param radius
#' @param color
#' @param stroke
#' @param fill
#' @param fillColor
#' @param fillOpacity
#'
#' @return
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

#' Title
#'
#' @param start
#' @param end
#' @param position
#' @param formatOutput
#' @param enablePlayback
#' @param enableKeyboardControls
#' @param steps
#' @param duration
#' @param waitToUpdateMap
#' @param showTicks
#'
#' @return
#' @export
#'
#' @examples
sliderOptions <- function(
  start = NULL,
  end = NULL,
  position = NULL,
  formatOutput = htmlwidgets::JS("function(date) {var dt = new Date(date); return dt.toDateString() + '<br>' + dt.toLocaleTimeString()}"),
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
