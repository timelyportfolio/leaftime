LeafletWidget.methods.addTimeline = function(group, data, timelineOptions, sliderOptions, width, onchange) {
  (function() {
    var map = this;

    // we need to bind the timelineOptions so that they are available to pointToLayer
    timelineOptions.pointToLayer = timelineOptions.pointToLayer.bind(timelineOptions);

    var timelineControl = L.timelineSliderControl(sliderOptions);
    var timeline = L.timeline(data, timelineOptions);

    timelineControl.addTo(map);
    timelineControl.addTimelines(timeline);
    timeline.addTo(map);

    if(typeof(width) !== 'undefined' && width !== null) {
      $(timelineControl.container.parentElement).css({width: width});
      $(timelineControl.container).css({width: '100%'});
    }

    if(typeof(onchange) !== 'undefined' && onchange !== null) {
      timeline.on('change', onchange);
    }

    // not the official way for layerManager but we'll hack for now
    map.layerManager._byCategory.timeline = L.layerGroup([timelineControl, timeline]);
  }).call(this);
};
