version 1.0

task HicPlotSVL {
  input {
    Array[String] matrices
    String? plot_filename
    String? out_filename
    String? out_filename_data
    String? distance
    Array[String] chromosomes
    String? threads
    String? dpi
    Array[String] color_list
  }
  command <<<
    hicPlotSVL \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(plot_filename) then ("--plotFileName " +  '"' + plot_filename + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(out_filename_data) then ("--outFileNameData " +  '"' + out_filename_data + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(color_list) then ("--colorList " +  '"' + color_list + '"') else ""}
  >>>
  parameter_meta {
    matrices: "The matrix (or multiple matrices) to use for the comparison"
    plot_filename: "Plot name."
    out_filename: "File the p-values are written to, p-values are only computed if at least two matrices are given."
    out_filename_data: "File the computed ratios are written to."
    distance: "Distance which should be considered as short range. Default 2MB."
    chromosomes: "Chromosomes to include in the analysis. If not set, all chromosomes are included."
    threads: "Number of threads. Using the python multiprocessing module."
    dpi: "Optional parameter: Resolution for the image in case theoutput is a raster graphics image (e.g png, jpg)"
    color_list: "Colorlist for the boxplots."
  }
}