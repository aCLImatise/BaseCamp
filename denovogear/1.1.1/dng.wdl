version 1.0

task Dng {
  input {
    String? commandCommand
  }
  command <<<
    dng \
      ~{commandCommand}
  >>>
}