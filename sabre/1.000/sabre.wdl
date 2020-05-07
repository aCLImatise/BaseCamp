version 1.0

task Sabre {
  input {
    String? commandCommand
  }
  command <<<
    sabre \
      ~{commandCommand}
  >>>
}