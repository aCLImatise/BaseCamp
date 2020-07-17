version 1.0

task ScreedCommand {
  input {
    String? args
  }
  command <<<
    screed command \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}