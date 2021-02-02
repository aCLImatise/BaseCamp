version 1.0

task Psass {
  command <<<
    psass
  >>>
  output {
    File out_stdout = stdout()
  }
}