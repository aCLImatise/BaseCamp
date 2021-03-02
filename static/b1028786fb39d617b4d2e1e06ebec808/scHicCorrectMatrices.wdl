version 1.0

task ScHicCorrectMatrices {
  input {
    Int? matrix
    File? out_filename
    Int? threads
  }
  command <<<
    scHicCorrectMatrices \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    matrix: "Matrix to reduce in h5 format. (default: None)"
    out_filename: "File name to save the resulting matrix, please add the\\nscool prefix. (default: None)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}