version 1.0

task Ameme {
  command <<<
    ameme
  >>>
  output {
    File out_stdout = stdout()
  }
}