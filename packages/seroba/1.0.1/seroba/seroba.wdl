version 1.0

task Seroba {
  command <<<
    seroba
  >>>
  output {
    File out_stdout = stdout()
  }
}