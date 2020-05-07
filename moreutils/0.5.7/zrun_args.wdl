version 1.0

task ZrunArgs {
  input {
    String? commandCommand
    String? argsArgs
  }
  command <<<
    zrun args \
      ~{commandCommand} \
      ~{argsArgs}
  >>>
}