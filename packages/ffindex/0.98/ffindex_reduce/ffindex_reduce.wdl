version 1.0

task FfindexReduce {
  input {
    String data_filename
    String index_filename
    String program
    String? program_args
  }
  command <<<
    ffindex_reduce \
      ~{data_filename} \
      ~{index_filename} \
      ~{program} \
      ~{program_args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ffindex:0.98--hc9558a2_0"
  }
  parameter_meta {
    data_filename: ""
    index_filename: ""
    program: ""
    program_args: ""
  }
  output {
    File out_stdout = stdout()
  }
}