version 1.0

task PlotInsertSizeDistribution {
  input {
    String? name_output_file
    String? choose_xrange_such
    String? additionally_plot_distribution
    String? x_range
    String? y_range
    String distribution_file
  }
  command <<<
    plot-insert-size-distribution \
      ~{distribution_file} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(choose_xrange_such) then ("-q " +  '"' + choose_xrange_such + '"') else ""} \
      ~{if defined(additionally_plot_distribution) then ("-n " +  '"' + additionally_plot_distribution + '"') else ""} \
      ~{if defined(x_range) then ("--xrange " +  '"' + x_range + '"') else ""} \
      ~{if defined(y_range) then ("--yrange " +  '"' + y_range + '"') else ""}
  >>>
  parameter_meta {
    name_output_file: "Name of output file (default: <data-file>.pdf)."
    choose_xrange_such: "Choose x-range such that at most the given mass is invisible in each tail (default=1e-4)."
    additionally_plot_distribution: "Additionally plot normal distribution with given mean and stddev (comma separated)."
    x_range: "Instead of using quantiles, use the given xrange (comma separated)."
    y_range: "Y-range to be used (default: auto)."
    distribution_file: ""
  }
}