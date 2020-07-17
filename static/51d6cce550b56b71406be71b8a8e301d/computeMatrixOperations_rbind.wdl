version 1.0

task ComputeMatrixOperationsRbind {
  input {
    Array[String] matrix_file
    String? out_filename
    String example
    String usage
  }
  command <<<
    computeMatrixOperations rbind \
      ~{example} \
      ~{usage} \
      ~{if defined(matrix_file) then ("--matrixFile " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""}
  >>>
  parameter_meta {
    matrix_file: "Matrix files from the computeMatrix tool. (default: None)"
    out_filename: "Output file name (default: None)"
    example: ""
    usage: ""
  }
}