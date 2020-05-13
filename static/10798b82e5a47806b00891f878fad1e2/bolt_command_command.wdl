version 1.0

task BoltCommandCommand {
  input {
    String? argumentsArguments
  }
  command <<<
    bolt command command \
      ~{argumentsArguments}
  >>>
}