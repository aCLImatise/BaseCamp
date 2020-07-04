version 1.0

task ComputeMatrixOperationsRelabel {
  input {
    String? matrix_file
    String? out_filename
    Array[String] group_labels
    Array[String] sample_labels
    String an
    String example
    String usage
    String is
  }
  command <<<
    computeMatrixOperations relabel \
      ~{an} \
      ~{example} \
      ~{usage} \
      ~{is} \
      ~{if defined(matrix_file) then ("--matrixFile " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(group_labels) then ("--groupLabels " +  '"' + group_labels + '"') else ""} \
      ~{if defined(sample_labels) then ("--sampleLabels " +  '"' + sample_labels + '"') else ""}
  >>>
  parameter_meta {
    matrix_file: "Matrix file from the computeMatrix tool. (default: None)"
    out_filename: "Output file name (default: None)"
    group_labels: "Groups labels. If none are specified then the current labels will be kept. (default: None)"
    sample_labels: "Sample labels. If none are specified then the current labels will be kept. (default: None)"
    an: ""
    example: ""
    usage: ""
    is: ""
  }
}