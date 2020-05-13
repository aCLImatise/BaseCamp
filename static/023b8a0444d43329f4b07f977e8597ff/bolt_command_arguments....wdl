version 1.0

task BoltCommandArguments... {
  input {
    String? commandCommand
    String? argumentsArguments
  }
  command <<<
    bolt command arguments... \
      ~{commandCommand} \
      ~{argumentsArguments}
  >>>
}