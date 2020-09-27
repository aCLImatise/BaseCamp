version 1.0

task Treesapp {
  input {
    String optional_arguments
  }
  command <<<
    treesapp \
      ~{optional_arguments}
  >>>
  parameter_meta {
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}