#' Title
#'
#' @param map
#' @param data
#' @param group
#' @param timelineOpts
#' @param sliderOpts
#' @param onchange
#'
#' @importFrom leaflet getMapData
#' @return \code{leaflet htmlwidget}
#' @export
#'
#' @example inst/examples/example_leaftime.R
addTimeline <- function(
  map = NULL,
  data = NULL,
  group = NULL,
  timelineOpts = timelineOptions(),
  sliderOpts = sliderOptions(),
  onchange = NULL
) {
  if(is.null(map)) {
    stop(
      "The map argument is NULL.  Please rerun with a leaflet htmlwidget as map argument.",
      call. = FALSE
    )
  }
  if(!inherits(map, "leaflet")) {
    stop(
      "Expecting map argument to be a leaflet map not a ",
      class(map),
      ".  Please supply a leaflet htmlwidget as map.",
      call. = FALSE
    )
  }

  if(is.null(data)) {
    data <- leaflet::getMapData(map)
  }

  map$dependencies <- c(
    map$dependencies,
    leaftimeDependency()
  )

  leaflet::invokeMethod(
    map,
    data,
    "addTimeline",
    group,
    data,
    timelineOpts,
    sliderOpts,
    onchange
  )
}
