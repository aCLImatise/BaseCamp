version 1.0

task ComputeMatrixOperationsFilterValues {
  input {
    String? matrix_file
    String? out_filename
    Int? min
    Int? max
    String example
    String usage
  }
  command <<<
    computeMatrixOperations filterValues \
      ~{example} \
      ~{usage} \
      ~{if defined(matrix_file) then ("--matrixFile " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""}
  >>>
  parameter_meta {
    matrix_file: "Matrix file from the computeMatrix tool. (default: None)"
    out_filename: "Output file name (default: None)"
    min: "Minimum value. Any row having a single entry less than this will be excluded. The default is no minimum. (default: None)"
    max: "Maximum value. Any row having a single entry more than this will be excluded. The default is no maximum. (default: None)"
    example: ""
    usage: ""
  }
}