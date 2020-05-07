version 1.0

task Kipoi {
  input {
    String? commandCommand
  }
  command <<<
    kipoi \
      ~{commandCommand}
  >>>
}