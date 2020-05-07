version 1.0

task ScreedCommand {
  input {
    String? argsArgs
  }
  command <<<
    screed command \
      ~{argsArgs}
  >>>
}