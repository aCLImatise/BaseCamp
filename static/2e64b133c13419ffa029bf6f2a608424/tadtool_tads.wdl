version 1.0

task TadtoolTads {
  input {
    String? algorithm
    Int? normalisation_window
    Boolean? write_values
    String matrix
    String regions
    String window_size
    String cut_off
    String optional_output_file
  }
  command <<<
    tadtool tads \
      ~{matrix} \
      ~{regions} \
      ~{window_size} \
      ~{cut_off} \
      ~{optional_output_file} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(normalisation_window) then ("--normalisation-window " +  '"' + normalisation_window + '"') else ""} \
      ~{if (write_values) then "--write-values" else ""}
  >>>
  parameter_meta {
    algorithm: "TAD-calling algorithm. Options: insulation,\\nninsulation, directionality. Default: insulation."
    normalisation_window: "Normalisation window in number of regions. Only\\naffects ninsulation algorithm. If not specified,\\nwindow will be the whole chromosome."
    write_values: "Write index values to file instead of TADs."
    matrix: "Square Hi-C Matrix as tab-delimited or .npy file\\n(created with numpy.save) or sparse matrix format\\n(each line: <row region index> <column region index>\\n<matrix value>)"
    regions: "BED file (no header) with regions corresponding to the\\nnumber of rows in the provided matrix. Fourth column,\\nif present, denotes name field, which is used as an\\nidentifier in sparse matrix notation."
    window_size: "Window size in base pairs"
    cut_off: "Cutoff for TAD-calling algorithm at given window size."
    optional_output_file: "Optional output file to save TADs."
  }
  output {
    File out_stdout = stdout()
  }
}