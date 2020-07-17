version 1.0

task ScHicMergeMatrixBins {
  input {
    String? matrix
    String? out_filename
    Int? num_bins
    Boolean? running_window
    String? threads
  }
  command <<<
    scHicMergeMatrixBins \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(num_bins) then ("--numBins " +  '"' + num_bins + '"') else ""} \
      ~{true="--runningWindow" false="" running_window} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    matrix: "Matrix to reduce in h5 format. (default: None)"
    out_filename: "File name to save the resulting matrix. The output is also a .h5 file. But don't add the suffix. (default: None)"
    num_bins: "Number of bins to merge. (default: None)"
    running_window: "set to merge for using a running window of length --numBins. Must be an odd number. (default: False)"
    threads: "Number of threads. Using the python multiprocessing module. (default: 4)"
  }
}