version 1.0

task Ifne {
  input {
    Boolean nN
    String? commandCommand
    String? argsArgs
  }
  command <<<
    ifne \
      ~{commandCommand} \
      ~{true="-n" false="" nN} \
      ~{argsArgs}
  >>>
}