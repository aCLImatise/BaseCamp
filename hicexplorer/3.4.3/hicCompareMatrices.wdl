version 1.0

task HicCompareMatrices {
  input {
    String? matrices
    String? out_filename
    String? operation
    String matrix_doth_five
  }
  command <<<
    hicCompareMatrices \
      ~{matrix_doth_five} \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(operation) then ("--operation " +  '"' + operation + '"') else ""}
  >>>
  parameter_meta {
    matrices: "matrix.h5, -m matrix.h5 matrix.h5 Name of the matrices in .h5 format to use, separated by a space. (default: None)"
    out_filename: "File name to save the resulting matrix. The output is also a .h5 file. (default: None)"
    operation: "Operation to apply to the matrices. (default: log2ratio)"
    matrix_doth_five: ""
  }
}