version 1.0

task HicSumMatrices {
  input {
    Boolean? matrices
    File? out_filename
  }
  command <<<
    hicSumMatrices \
      ~{if (matrices) then "--matrices" else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""}
  >>>
  parameter_meta {
    matrices: ".h5 or cooler file format [.h5 or cooler file format ...], -m .h5 or cooler file format [.h5 or cooler file format ...]\\nSpace-delimited names of the matrices to add. The\\nmatrices must have the same shape/size. You can verify\\ntheir size by using `hicInfo`. (default: None)"
    out_filename: "File name to save the resulting matrix. The output is\\nfrom the same file type as the input. Please add the\\nfile ending suffix (either .h5 or .cool), if it is not\\ngiven, there will be no output. (default: None)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}