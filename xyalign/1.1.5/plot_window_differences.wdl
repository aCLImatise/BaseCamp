version 1.0

task PlotWindowDifferences {
  input {
    String? before
    String? after
    String? color
    String? chrom
    String? sample_id
    String? output_prefix
    String? marker_size
    String? marker_transparency
    String? coordinate_scale
    String? y_min
    String? y_max
    String? x_limit
    Boolean? log_transform_depth
  }
  command <<<
    plot_window_differences \
      ~{if defined(before) then ("--before " +  '"' + before + '"') else ""} \
      ~{if defined(after) then ("--after " +  '"' + after + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(marker_size) then ("--marker_size " +  '"' + marker_size + '"') else ""} \
      ~{if defined(marker_transparency) then ("--marker_transparency " +  '"' + marker_transparency + '"') else ""} \
      ~{if defined(coordinate_scale) then ("--coordinate_scale " +  '"' + coordinate_scale + '"') else ""} \
      ~{if defined(y_min) then ("--y_min " +  '"' + y_min + '"') else ""} \
      ~{if defined(y_max) then ("--y_max " +  '"' + y_max + '"') else ""} \
      ~{if defined(x_limit) then ("--x_limit " +  '"' + x_limit + '"') else ""} \
      ~{true="--log_transform_depth" false="" log_transform_depth}
  >>>
  parameter_meta {
    before: "Full path to dataframe 1 (will be treated) as 'before' condition."
    after: "Full path to dataframe 2 (will be treated) as 'after' condition."
    color: "Color of points to use. Consult matplotlib documentation for available options."
    chrom: "Chromosome to analyze. Must match name in dataframes."
    sample_id: "Sample ID or other identifier to be used in naming"
    output_prefix: "Full path to and prefix of desired output plot"
    marker_size: "Marker size in matplotlib. Default is 10."
    marker_transparency: "Transparency of markers. Alpha in matplotlib. Default is 0.5"
    coordinate_scale: "Divide all coordinates by this value.Default is 1000000, which will plot everything in megabases."
    y_min: "If 'auto', will allow matplotlib to automatically determine limit. Otherwise, will set the y axis minimum to the value provided (int or float)"
    y_max: "If 'auto', will allow matplotlib to automatically determine limit. Otherwise, will set the y axis maximum to the value provided (int or float)"
    x_limit: "Max value on x axis. We recommend you use the chromosome length."
    log_transform_depth: "Include flag to plot the absolute value of the log of the depth difference *IN THE DIRECTION OF THE DIFFERENCE*. For exampe, if the difference is 2, this would plot that value as abs(log10(2)), while if the difference is -2, this would plot that value as -abs(log10(2)). This allows the sign of the difference to remain intact, while controlling for taking the log of negative numbers or values between 0 and 1."
  }
}