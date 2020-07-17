version 1.0

task HicMergeMatrixBins {
  input {
    Int? num_bins
    String? matrix
    String? out_filename
    Boolean? running_window
  }
  command <<<
    hicMergeMatrixBins \
      ~{if defined(num_bins) then ("--numBins " +  '"' + num_bins + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{true="--runningWindow" false="" running_window}
  >>>
  parameter_meta {
    num_bins: "Number of bins to merge. (default: None)"
    matrix: "Matrix to reduce in h5 format. (default: None)"
    out_filename: "File name to save the resulting matrix. The output is also a .h5 file. But don't add the suffix. (default: None)"
    running_window: "Set to merge for using a running window of length --numBins. (default: False)"
  }
}