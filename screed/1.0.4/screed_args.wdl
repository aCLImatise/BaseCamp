version 1.0

task ScreedArgs {
  input {
    String? commandCommand
    String? argsArgs
  }
  command <<<
    screed args \
      ~{commandCommand} \
      ~{argsArgs}
  >>>
}