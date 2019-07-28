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
  pointToLayer = NULL,
  drawOnSetTime = NULL
) {
  Filter(Negate(is.null),list(
    getInterval = getInterval,
    pointToLayer = pointToLayer,
    drawOnSetTime = drawOnSetTime
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
#'
#' @return
#' @export
#'
#' @examples
sliderOptions <- function(
  start = NULL,
  end = NULL,
  position = NULL,
  formatOutput = NULL,
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
