version 1.0

task ScreedArgs {
  input {
    String optional_arguments
  }
  command <<<
    screed args \
      ~{optional_arguments}
  >>>
  parameter_meta {
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}