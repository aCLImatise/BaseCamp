version 1.0

task PlotWindowDifferences {
  input {
    File? before
    String? chrom
    String? sample_id
    File? output_prefix
    Int? marker_size
    Float? marker_transparency
    Int? coordinate_scale
    Float? y_min
    Float? y_max
    Int? x_limit
    Boolean? log_transform_depth
    String? after
  }
  command <<<
    plot_window_differences \
      ~{if defined(before) then ("--before " +  '"' + before + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(marker_size) then ("--marker_size " +  '"' + marker_size + '"') else ""} \
      ~{if defined(marker_transparency) then ("--marker_transparency " +  '"' + marker_transparency + '"') else ""} \
      ~{if defined(coordinate_scale) then ("--coordinate_scale " +  '"' + coordinate_scale + '"') else ""} \
      ~{if defined(y_min) then ("--y_min " +  '"' + y_min + '"') else ""} \
      ~{if defined(y_max) then ("--y_max " +  '"' + y_max + '"') else ""} \
      ~{if defined(x_limit) then ("--x_limit " +  '"' + x_limit + '"') else ""} \
      ~{if (log_transform_depth) then "--log_transform_depth" else ""} \
      ~{if defined(after) then ("--after " +  '"' + after + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    before: "Full path to dataframe 1 (will be treated) as 'before'"
    chrom: "Chromosome to analyze. Must match name in dataframes."
    sample_id: "Sample ID or other identifier to be used in naming"
    output_prefix: "Full path to and prefix of desired output plot"
    marker_size: "Marker size in matplotlib. Default is 10."
    marker_transparency: "Transparency of markers. Alpha in matplotlib. Default\\nis 0.5"
    coordinate_scale: "Divide all coordinates by this value.Default is\\n1000000, which will plot everything in megabases."
    y_min: "If 'auto', will allow matplotlib to automatically\\ndetermine limit. Otherwise, will set the y axis\\nminimum to the value provided (int or float)"
    y_max: "If 'auto', will allow matplotlib to automatically\\ndetermine limit. Otherwise, will set the y axis\\nmaximum to the value provided (int or float)"
    x_limit: "Max value on x axis. We recommend you use the\\nchromosome length."
    log_transform_depth: "Include flag to plot the absolute value of the log of\\nthe depth difference *IN THE DIRECTION OF THE\\nDIFFERENCE*. For exampe, if the difference is 2, this\\nwould plot that value as abs(log10(2)), while if the\\ndifference is -2, this would plot that value as\\n-abs(log10(2)). This allows the sign of the difference\\nto remain intact, while controlling for taking the log\\nof negative numbers or values between 0 and 1.\\n"
    after: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix = "${in_output_prefix}"
  }
}