version 1.0

task ScHicMergeMatrixBins {
  input {
    Int? num_bins
    Int? matrix
    File? out_filename
    Boolean? running_window
    Int? num_bins_dot
    Int? threads
  }
  command <<<
    scHicMergeMatrixBins \
      ~{if defined(num_bins) then ("--numBins " +  '"' + num_bins + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if (running_window) then "--runningWindow" else ""} \
      ~{if defined(num_bins_dot) then ("--numBins. " +  '"' + num_bins_dot + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    num_bins: "Number of bins to merge. (default: None)"
    matrix: "Matrix to reduce in h5 format. (default: None)"
    out_filename: "File name to save the resulting matrix. The output is\\nalso a .h5 file. But don't add the suffix. (default:\\nNone)"
    running_window: "set to merge for using a running window of length"
    num_bins_dot: "be an odd number. (default: False)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}