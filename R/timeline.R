#' Add 'leaflet-timeline' To Leaflet Map
#'
#' @param map \code{htmlwidget} leaflet map to which a timeline will be added.
#' @param data \code{geojson} with data for the timeline.  Each feature should have
#'          start and end properties so the timeline will know when to show the
#'          feature.
#' @param group \code{string} name of the group for the timeline control.
#' @param timelineOpts \code{list} from \code{\link{timelineOptions}}.
#' @param sliderOpts \code{list} from \code{\link{sliderOptions}}.
#' @param width valid \code{CSS} width for the timeline control.  If given as a percentage,
#'          then \code{95\%} or less is recommended to show within the bounds of the map.
#' @param onchange \code{htmlwidgets::JS} function callback for when the timeline is changed.
#'
#' @return \code{leaflet htmlwidget}
#' @export
#'
#' @seealso \code{\link{timelineOptions}},\code{\link{sliderOptions}}
#'
#' @example inst/examples/example_leaftime.R
addTimeline <- function(
  map = NULL,
  data = NULL,
  group = NULL,
  timelineOpts = timelineOptions(),
  sliderOpts = sliderOptions(),
  width = NULL,
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
    width,
    onchange
  )
}
