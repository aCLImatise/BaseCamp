version 1.0

task Fastqutils {
  input {
    String? commandCommand
  }
  command <<<
    fastqutils \
      ~{commandCommand}
  >>>
}