version 1.0

task Itero {
  input {
    String? commandCommand
  }
  command <<<
    itero \
      ~{commandCommand}
  >>>
}