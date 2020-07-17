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
    String? labels
    String? range
    String? out_filename_heat_map
    String? out_filename_scatter
    Array[String] chromosomes
    String? threads
  }
  command <<<
    hicCorrelate \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(zmin) then ("--zMin " +  '"' + zmin + '"') else ""} \
      ~{if defined(zmax) then ("--zMax " +  '"' + zmax + '"') else ""} \
      ~{true="--colorMap" false="" colormap} \
      ~{if defined(plot_file_format) then ("--plotFileFormat " +  '"' + plot_file_format + '"') else ""} \
      ~{true="--plotNumbers" false="" plot_numbers} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{true="--log1p" false="" logo_nep} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(out_filename_heat_map) then ("--outFileNameHeatmap " +  '"' + out_filename_heat_map + '"') else ""} \
      ~{if defined(out_filename_scatter) then ("--outFileNameScatter " +  '"' + out_filename_scatter + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    matrices: "Matrices to correlate (usually .h5 but other formats are allowed). hicCorrelate is better used on un- corrected matrices in order to exclude any changes introduced by the correction. (default: None)"
    zmin: "Minimum value for the heatmap intensities. If not specified the value is set automatically. (default: None)"
    zmax: "Maximum value for the heatmap intensities.If not specified the value is set automatically. (default: None)"
    colormap: "Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col ormaps_reference.html (default: jet)"
    plot_file_format: "Image format type. If given, this option overrides the image format based on the plotFile ending. The available options are: png, emf, eps, pdf and svg. (default: None)"
    plot_numbers: "If set, then the correlation number is plotted on top of the heatmap. (default: False)"
    method: "Correlation method to use. (default: pearson)"
    logo_nep: "If set, then the log1p of the matrix values is used. This parameter has no effect for Spearman correlations but changes the output of Pearson correlation and, for the scatter plot, if set, the visualization of the values is easier. (default: False)"
    labels: "sample2 [sample1 sample2 ...], -l sample1 sample2 [sample1 sample2 ...] User defined labels instead of default labels from file names. Multiple labels have to be separated by space, e.g. --labels sample1 sample2 sample3 (default: None)"
    range: "In bp with the format low_range:high_range, for example 1000000:2000000. If --range is given only counts within this range are considered. The range should be adjusted to the size of interacting domains in the genome you are working with. (default: None)"
    out_filename_heat_map: "File name to save the resulting heatmap plot. (default: None)"
    out_filename_scatter: "File name to save the resulting scatter plot. (default: None)"
    chromosomes: "List of chromosomes to be included in the correlation. (default: None)"
    threads: "Number of threads. Using the python multiprocessing module. Is only used with 'cool' matrix format. One master process which is used to read the input file into the buffer and one process which is merging the output bam files of the processes into one output bam file. All other threads do the actual computation. (default: 4)"
  }
}