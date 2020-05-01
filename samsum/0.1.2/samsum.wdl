version 1.0

task Samsum {
  input {
    String? commandCommand
  }
  command <<<
    samsum \
      ~{commandCommand}
  >>>
}