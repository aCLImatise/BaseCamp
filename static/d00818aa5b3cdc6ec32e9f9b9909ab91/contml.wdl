version 1.0

task Contml {
  command <<<
    contml
  >>>
  output {
    File out_stdout = stdout()
  }
}