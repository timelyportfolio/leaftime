#' 'Leaflet.timeline' Dependencies
#'
#' @return \code{htmltools::htmlDependency}
#' @export

leaftimeDependency <- function() {
  list(
    htmltools::htmlDependency(
      name = "Leaflet.timeline",
      version = "1.2.1",
      src = c(file = "www/"),
      script = c(
        "Leaflet.timeline/leaflet.timeline.js",
        "binding/leaftime-binding.js"
      ),
      style = "binding/leaftime-binding.css",
      package = "leaftime",
      all_files = FALSE
    )
  )
}
