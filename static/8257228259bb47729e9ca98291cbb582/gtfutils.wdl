version 1.0

task Gtfutils {
  input {
    String? commandCommand
  }
  command <<<
    gtfutils \
      ~{commandCommand}
  >>>
}