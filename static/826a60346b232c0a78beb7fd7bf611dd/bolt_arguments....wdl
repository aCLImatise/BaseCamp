version 1.0

task BoltArguments... {
  input {
    String? commandCommand
    String? commandCommand
    String? argumentsArguments
  }
  command <<<
    bolt arguments... \
      ~{commandCommand} \
      ~{commandCommand} \
      ~{argumentsArguments}
  >>>
}