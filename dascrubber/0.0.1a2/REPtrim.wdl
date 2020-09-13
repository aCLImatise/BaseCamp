version 1.0

task REPtrim {
  command <<<
    REPtrim
  >>>
  output {
    File out_stdout = stdout()
  }
}