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
    docker: "quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0"
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