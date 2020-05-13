version 1.0

task Bamutils {
  input {
    String? commandCommand
  }
  command <<<
    bamutils \
      ~{commandCommand}
  >>>
}