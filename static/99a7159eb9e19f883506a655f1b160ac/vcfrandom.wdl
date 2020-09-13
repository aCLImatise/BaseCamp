version 1.0

task Vcfrandom {
  command <<<
    vcfrandom
  >>>
  output {
    File out_stdout = stdout()
  }
}