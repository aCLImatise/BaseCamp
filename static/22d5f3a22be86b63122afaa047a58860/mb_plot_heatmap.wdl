version 1.0

task MbPlotHeatmap {
  input {
    String? downstream
    String? upstream
    Int? min
    Int? max
    String? x_bins
    String? y_bins
    String? xp_x
    String? yp_x
    Boolean? remove
    Boolean? verbose
  }
  command <<<
    mb-plot-heatmap \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""} \
      ~{if defined(upstream) then ("--upstream " +  '"' + upstream + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(x_bins) then ("--xbins " +  '"' + x_bins + '"') else ""} \
      ~{if defined(y_bins) then ("--ybins " +  '"' + y_bins + '"') else ""} \
      ~{if defined(xp_x) then ("--xpx " +  '"' + xp_x + '"') else ""} \
      ~{if defined(yp_x) then ("--ypx " +  '"' + yp_x + '"') else ""} \
      ~{true="--remove" false="" remove} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    downstream: "set downstream range"
    upstream: "set upstream range"
    min: "minimum transcript size"
    max: "maximum transcript size"
    x_bins: "number of bins in x direction"
    y_bins: "number of bins in y direction"
    xp_x: "width of final plot in px"
    yp_x: "height of final plot in px"
    remove: "remove temporary text files"
    verbose: "verbose output"
  }
}