version 1.0

task ComputeMatrixOperationsInfo {
  input {
    String? matrix_file
    String an
    String example
    String usage
    String is
  }
  command <<<
    computeMatrixOperations info \
      ~{an} \
      ~{example} \
      ~{usage} \
      ~{is} \
      ~{if defined(matrix_file) then ("--matrixFile " +  '"' + matrix_file + '"') else ""}
  >>>
  parameter_meta {
    matrix_file: "Matrix file from the computeMatrix tool. (default: None)"
    an: ""
    example: ""
    usage: ""
    is: ""
  }
}