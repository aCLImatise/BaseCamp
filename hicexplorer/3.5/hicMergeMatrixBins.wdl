version 1.0

task HicMergeMatrixBins {
  input {
    Int? num_bins
    Int? matrix
    File? out_filename
    Boolean? running_window
    Boolean? num_bins_dot
  }
  command <<<
    hicMergeMatrixBins \
      ~{if defined(num_bins) then ("--numBins " +  '"' + num_bins + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if (running_window) then "--runningWindow" else ""} \
      ~{if (num_bins_dot) then "--numBins." else ""}
  >>>
  parameter_meta {
    num_bins: "Number of bins to merge. (default: None)"
    matrix: "Matrix to reduce in h5 format. (default: None)"
    out_filename: "File name to save the resulting matrix. The output is\\nalso a .h5 file. But don't add the suffix. (default:\\nNone)"
    running_window: "Set to merge for using a running window of length"
    num_bins_dot: "(default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}