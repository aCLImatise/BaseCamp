version 1.0

task HicCompareMatrices {
  input {
    Int? matrices
    File? out_filename
    String? operation
    Int matrix_doth_five
  }
  command <<<
    hicCompareMatrices \
      ~{matrix_doth_five} \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(operation) then ("--operation " +  '"' + operation + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrices: "matrix.h5, -m matrix.h5 matrix.h5\\nName of the matrices in .h5 format to use, separated\\nby a space. (default: None)"
    out_filename: "File name to save the resulting matrix. The output is\\nalso a .h5 file. (default: None)"
    operation: "Operation to apply to the matrices. (default:\\nlog2ratio)"
    matrix_doth_five: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}