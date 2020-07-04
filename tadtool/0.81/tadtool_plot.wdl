version 1.0

task TadtoolPlot {
  input {
    Array[String] window_sizes
    String? algorithm
    Int? max_distance
    String? normalisation_window
    String? data
    String matrix
    String regions
    String plotting_region
  }
  command <<<
    tadtool plot \
      ~{matrix} \
      ~{regions} \
      ~{plotting_region} \
      ~{if defined(window_sizes) then ("--window-sizes " +  '"' + window_sizes + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(max_distance) then ("--max-distance " +  '"' + max_distance + '"') else ""} \
      ~{if defined(normalisation_window) then ("--normalisation-window " +  '"' + normalisation_window + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""}
  >>>
  parameter_meta {
    window_sizes: "Window sizes in base pairs used for TAD calculation. You can pass (1) a filename with whitespace-delimited window sizes, (2) three integers denoting start, stop, and step size to generate a range of window sizes, or (3) more than three integers to define window sizes directly. If left at default, window sizes will be logarithmically spaced between 10**4 and 10**6, or 10**6.5 for the insulation and directionality index, respectively."
    algorithm: "TAD-calling algorithm. Options: insulation, ninsulation, directionality. Default: insulation."
    max_distance: "Maximum distance in base-pairs away from the diagonal to be shown in Hi-C plot. Defaults to half the plotting window."
    normalisation_window: "Normalisation window in number of regions. Only affects ninsulation algorithm. If not specified, window will be the whole chromosome."
    data: "Matrix with index data. Rows correspond to window sizes, columns to Hi-C matrix bins. If provided, suppresses inbuilt index calculation."
    matrix: "Square Hi-C Matrix as tab-delimited or .npy file (created with numpy.save) or sparse matrix format (each line: <row region index> <column region index> <matrix value>)"
    regions: "BED file (no header) with regions corresponding to the number of rows in the provided matrix. Fourth column, if present, denotes name field, which is used as an identifier in sparse matrix notation."
    plotting_region: "Region of the Hi-C matrix to display in plot. Format: <chromosome>:<start>-<end>, e.g. chr12:31000000-33000000"
  }
}