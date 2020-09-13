version 1.0

task TadtoolSubset {
  input {
    String matrix
    String regions
    String sub_region
    String output_matrix
    String output_regions
  }
  command <<<
    tadtool subset \
      ~{matrix} \
      ~{regions} \
      ~{sub_region} \
      ~{output_matrix} \
      ~{output_regions}
  >>>
  parameter_meta {
    matrix: "Square Hi-C Matrix as tab-delimited or .npy file (created\\nwith numpy.save) or sparse matrix format (each line: <row\\nregion index> <column region index> <matrix value>)"
    regions: "BED file (no header) with regions corresponding to the\\nnumber of rows in the provided matrix. Fourth column, if\\npresent, denotes name field, which is used as an identifier\\nin sparse matrix notation."
    sub_region: "Region of the Hi-C matrix to display in plot. Format:\\n<chromosome>:<start>-<end>, e.g. chr12:31000000-33000000"
    output_matrix: "Output matrix file."
    output_regions: "Output regions file."
  }
  output {
    File out_stdout = stdout()
  }
}