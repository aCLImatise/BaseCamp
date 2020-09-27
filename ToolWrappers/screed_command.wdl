version 1.0

task ScreedCommand {
  input {
    String optional_arguments
  }
  command <<<
    screed command \
      ~{optional_arguments}
  >>>
  parameter_meta {
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}