version 1.0

task ScHicTxtToSCool {
  input {
    Array[String] matrices
    Int? chromosome_sizes
    String? resolution
    File? out_filename
    Int? threads
  }
  command <<<
    scHicTxtToSCool \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(chromosome_sizes) then ("--chromosomeSizes " +  '"' + chromosome_sizes + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    matrices: "input file(s). (default: None)"
    chromosome_sizes: "Text file with two columns, first column is the name\\nof the chromosome, second one its length. (default:\\nNone)"
    resolution: "The resolution of the matrix. (default: None)"
    out_filename: "File name to save the scool matrix. (default: None)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}