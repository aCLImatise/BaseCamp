version 1.0

task Sickle {
  input {
    String? commandCommand
  }
  command <<<
    sickle \
      ~{commandCommand}
  >>>
}