version 1.0

task Vcflength {
  command <<<
    vcflength
  >>>
  output {
    File out_stdout = stdout()
  }
}