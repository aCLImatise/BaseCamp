version 1.0

task ComputeMatrixOperationsSubset {
  input {
    String? matrix_file
    String? out_filename
    Array[String] groups
    Array[String] samples
    String an
    String example
    String usage
    String is
  }
  command <<<
    computeMatrixOperations subset \
      ~{an} \
      ~{example} \
      ~{usage} \
      ~{is} \
      ~{if defined(matrix_file) then ("--matrixFile " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""}
  >>>
  parameter_meta {
    matrix_file: "Matrix file from the computeMatrix tool. (default: None)"
    out_filename: "Output file name (default: None)"
    groups: "Groups to include. If none are specified then all will be included. (default: None)"
    samples: "Samples to include. If none are specified then all will be included. (default: None)"
    an: ""
    example: ""
    usage: ""
    is: ""
  }
}