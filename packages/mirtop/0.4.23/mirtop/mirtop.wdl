version 1.0

task Mirtop {
  command <<<
    mirtop
  >>>
  output {
    File out_stdout = stdout()
  }
}