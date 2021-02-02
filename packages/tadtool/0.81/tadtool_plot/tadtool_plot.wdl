version 1.0

task TadtoolPlot {
  input {
    Array[String] window_sizes
    String? algorithm
    Int? max_distance
    Int? normalisation_window
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
    window_sizes: "Window sizes in base pairs used for TAD calculation.\\nYou can pass (1) a filename with whitespace-delimited\\nwindow sizes, (2) three integers denoting start, stop,\\nand step size to generate a range of window sizes, or\\n(3) more than three integers to define window sizes\\ndirectly. If left at default, window sizes will be\\nlogarithmically spaced between 10**4 and 10**6, or\\n10**6.5 for the insulation and directionality index,\\nrespectively."
    algorithm: "TAD-calling algorithm. Options: insulation,\\nninsulation, directionality. Default: insulation."
    max_distance: "Maximum distance in base-pairs away from the diagonal\\nto be shown in Hi-C plot. Defaults to half the\\nplotting window."
    normalisation_window: "Normalisation window in number of regions. Only\\naffects ninsulation algorithm. If not specified,\\nwindow will be the whole chromosome."
    data: "Matrix with index data. Rows correspond to window\\nsizes, columns to Hi-C matrix bins. If provided,\\nsuppresses inbuilt index calculation.\\n"
    matrix: "Square Hi-C Matrix as tab-delimited or .npy file\\n(created with numpy.save) or sparse matrix format\\n(each line: <row region index> <column region index>\\n<matrix value>)"
    regions: "BED file (no header) with regions corresponding to the\\nnumber of rows in the provided matrix. Fourth column,\\nif present, denotes name field, which is used as an\\nidentifier in sparse matrix notation."
    plotting_region: "Region of the Hi-C matrix to display in plot. Format:\\n<chromosome>:<start>-<end>, e.g.\\nchr12:31000000-33000000"
  }
  output {
    File out_stdout = stdout()
  }
}