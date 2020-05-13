version 1.0

task Matlock {
  input {
    String? commandCommand
  }
  command <<<
    matlock \
      ~{commandCommand}
  >>>
}