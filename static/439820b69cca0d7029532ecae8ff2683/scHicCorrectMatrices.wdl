version 1.0

task ScHicCorrectMatrices {
  input {
    String? matrix
    String? out_filename
    String? threads
  }
  command <<<
    scHicCorrectMatrices \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    matrix: "Matrix to reduce in h5 format. (default: None)"
    out_filename: "File name to save the resulting matrix, please add the scool prefix. (default: None)"
    threads: "Number of threads. Using the python multiprocessing module. (default: 4)"
  }
}