version 1.0

task PlotWindowDifferences {
  input {
    String beforeBefore
    String afterAfter
    String colorColor
    String chromChrom
    String sampleSampleId
    String outputOutputPrefix
    String markerMarkerSize
    String markerMarkerTransparency
    String coordinateCoordinateScale
    String yYMin
    String yYMax
    String xXLimit
    Boolean logLogTransformDepth
  }
  command <<<
    plot_window_differences \
      ~{if defined(beforeBefore) then ("--before " +  '"' + beforeBefore + '"') else ""} \
      ~{if defined(afterAfter) then ("--after " +  '"' + afterAfter + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(sampleSampleId) then ("--sample_id " +  '"' + sampleSampleId + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(markerMarkerSize) then ("--marker_size " +  '"' + markerMarkerSize + '"') else ""} \
      ~{if defined(markerMarkerTransparency) then ("--marker_transparency " +  '"' + markerMarkerTransparency + '"') else ""} \
      ~{if defined(coordinateCoordinateScale) then ("--coordinate_scale " +  '"' + coordinateCoordinateScale + '"') else ""} \
      ~{if defined(yYMin) then ("--y_min " +  '"' + yYMin + '"') else ""} \
      ~{if defined(yYMax) then ("--y_max " +  '"' + yYMax + '"') else ""} \
      ~{if defined(xXLimit) then ("--x_limit " +  '"' + xXLimit + '"') else ""} \
      ~{true="--log_transform_depth" false="" logLogTransformDepth}
  >>>
}