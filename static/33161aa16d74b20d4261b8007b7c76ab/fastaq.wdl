version 1.0

task Fastaq {
  input {
    String? commandCommand
  }
  command <<<
    fastaq \
      ~{commandCommand}
  >>>
}