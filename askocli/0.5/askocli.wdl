version 1.0

task Askocli {
  input {
    String? commandCommand
    String? argsArgs
  }
  command <<<
    askocli \
      ~{commandCommand} \
      ~{argsArgs}
  >>>
}