version 1.0

task Swga {
  input {
    String? commandCommand
  }
  command <<<
    swga \
      ~{commandCommand}
  >>>
}