version 1.0

task Ps2pdf12 {
  command <<<
    ps2pdf12
  >>>
  output {
    File out_stdout = stdout()
  }
}