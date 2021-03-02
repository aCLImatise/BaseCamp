version 1.0

task Samsum {
  input {
    String optional_arguments
  }
  command <<<
    samsum \
      ~{optional_arguments}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samsum:0.1.4--py38h5d069a8_0"
  }
  parameter_meta {
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}