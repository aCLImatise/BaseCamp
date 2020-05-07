version 1.0

task Bedutils {
  input {
    String? commandCommand
  }
  command <<<
    bedutils \
      ~{commandCommand}
  >>>
}