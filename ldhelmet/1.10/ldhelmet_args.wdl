version 1.0

task LdhelmetArgs {
  input {
    String? commandCommand
    String? argsArgs
  }
  command <<<
    ldhelmet args \
      ~{commandCommand} \
      ~{argsArgs}
  >>>
}