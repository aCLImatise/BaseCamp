version 1.0

task Treesapp {
  input {
    String optional_arguments
  }
  command <<<
    treesapp \
      ~{optional_arguments}
  >>>
  runtime {
    docker: "quay.io/biocontainers/treesapp:0.10.2--py37h9a982cc_0"
  }
  parameter_meta {
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}