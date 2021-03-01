version 1.0

task HicCorrelate {
  input {
    Array[String] matrices
    String? zmin
    String? zmax
    Boolean? colormap
    File? plot_file_format
    Boolean? plot_numbers
    String? method
    Boolean? logo_nep
    Int? labels
    Int? range
    File? out_filename_heat_map
    File? out_filename_scatter
    Array[String] chromosomes
  }
  command <<<
    hicCorrelate \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(zmin) then ("--zMin " +  '"' + zmin + '"') else ""} \
      ~{if defined(zmax) then ("--zMax " +  '"' + zmax + '"') else ""} \
      ~{if (colormap) then "--colorMap" else ""} \
      ~{if defined(plot_file_format) then ("--plotFileFormat " +  '"' + plot_file_format + '"') else ""} \
      ~{if (plot_numbers) then "--plotNumbers" else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if (logo_nep) then "--log1p" else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(out_filename_heat_map) then ("--outFileNameHeatmap " +  '"' + out_filename_heat_map + '"') else ""} \
      ~{if defined(out_filename_scatter) then ("--outFileNameScatter " +  '"' + out_filename_scatter + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    matrices: "Matrices to correlate (usually .h5 but other formats\\nare allowed). hicCorrelate is better used on un-\\ncorrected matrices in order to exclude any changes\\nintroduced by the correction. (default: None)"
    zmin: "Minimum value for the heatmap intensities. If not\\nspecified the value is set automatically. (default:\\nNone)"
    zmax: "Maximum value for the heatmap intensities.If not\\nspecified the value is set automatically. (default:\\nNone)"
    colormap: "Color map to use for the heatmap. Available values can\\nbe seen here: http://matplotlib.org/examples/color/col\\normaps_reference.html (Default: jet)."
    plot_file_format: "Image format type. If given, this option overrides the\\nimage format based on the plotFile ending. The\\navailable options are: png, emf, eps, pdf and svg.\\n(default: None)"
    plot_numbers: "If set, then the correlation number is plotted on top\\nof the heatmap. (default: False)"
    method: "Correlation method to use (Default: pearson)."
    logo_nep: "If set, then the log1p of the matrix values is used.\\nThis parameter has no effect for Spearman correlations\\nbut changes the output of Pearson correlation and, for\\nthe scatter plot, if set, the visualization of the\\nvalues is easier. (default: False)"
    labels: "sample2 [sample1 sample2 ...], -l sample1 sample2 [sample1 sample2 ...]\\nUser defined labels instead of default labels from\\nfile names. Multiple labels have to be separated by\\nspace, e.g. --labels sample1 sample2 sample3 (default:\\nNone)"
    range: "In bp with the format low_range:high_range, for\\nexample 1000000:2000000. If --range is given only\\ncounts within this range are considered. The range\\nshould be adjusted to the size of interacting domains\\nin the genome you are working with. (default: None)"
    out_filename_heat_map: "File name to save the resulting heatmap plot.\\n(default: None)"
    out_filename_scatter: "File name to save the resulting scatter plot.\\n(default: None)"
    chromosomes: "List of chromosomes to be included in the correlation.\\n(default: None)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename_heat_map = "${in_out_filename_heat_map}"
    File out_out_filename_scatter = "${in_out_filename_scatter}"
  }
}