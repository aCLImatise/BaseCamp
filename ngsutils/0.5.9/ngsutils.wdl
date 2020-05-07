version 1.0

task Ngsutils {
  input {
    String? commandCommand
  }
  command <<<
    ngsutils \
      ~{commandCommand}
  >>>
}