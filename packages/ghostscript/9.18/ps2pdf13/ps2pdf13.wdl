version 1.0

task Ps2pdf13 {
  command <<<
    ps2pdf13
  >>>
  output {
    File out_stdout = stdout()
  }
}