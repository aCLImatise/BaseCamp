version 1.0

task HicMergeMatrixBins {
  input {
    Int? matrix
    File? out_filename
    Int? num_bins
    Boolean? running_window
    Boolean? num_bins_dot
  }
  command <<<
    hicMergeMatrixBins \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(num_bins) then ("--numBins " +  '"' + num_bins + '"') else ""} \
      ~{if (running_window) then "--runningWindow" else ""} \
      ~{if (num_bins_dot) then "--numBins." else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix: "Matrix to reduce in h5 format. (default: None)"
    out_filename: "File name to save the resulting matrix. The output is\\nalso a .h5 file. But don't add the suffix. (default:\\nNone)"
    num_bins: "Number of bins to merge. (default: None)"
    running_window: "Set to merge for using a running window of length"
    num_bins_dot: "(default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}