version 1.0

task HicSumMatrices {
  input {
    Boolean? matrices
    String? out_filename
  }
  command <<<
    hicSumMatrices \
      ~{true="--matrices" false="" matrices} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""}
  >>>
  parameter_meta {
    matrices: ".h5 or cooler file format [.h5 or cooler file format ...], -m .h5 or cooler file format [.h5 or cooler file format ...] Space-delimited names of the matrices to add. The matrices must have the same shape/size. You can verify their size by using `hicInfo`. (default: None)"
    out_filename: "File name to save the resulting matrix. The output is from the same file type as the input. Please add the file ending suffix (either .h5 or .cool), if it is not given, there will be no output. (default: None)"
  }
}