version 1.0

task Parmcal {
  command <<<
    parmcal
  >>>
  output {
    File out_stdout = stdout()
  }
}