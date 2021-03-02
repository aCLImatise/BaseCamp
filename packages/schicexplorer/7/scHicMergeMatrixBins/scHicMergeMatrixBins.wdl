version 1.0

task ScHicMergeMatrixBins {
  input {
    String? matrix
    File? out_filename
    Int? num_bins
    Boolean? running_window
    Int? num_bins_dot
    Int? threads
  }
  command <<<
    scHicMergeMatrixBins \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(num_bins) then ("--numBins " +  '"' + num_bins + '"') else ""} \
      ~{if (running_window) then "--runningWindow" else ""} \
      ~{if defined(num_bins_dot) then ("--numBins. " +  '"' + num_bins_dot + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    matrix: "Matrix to reduce in scool format. (default: None)"
    out_filename: "File name to save the resulting matrix. The output is\\nalso a .scool file. But don't add the suffix.\\n(default: None)"
    num_bins: "Number of bins to merge. (default: None)"
    running_window: "set to merge for using a running window of length"
    num_bins_dot: "be an odd number. (default: False)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}