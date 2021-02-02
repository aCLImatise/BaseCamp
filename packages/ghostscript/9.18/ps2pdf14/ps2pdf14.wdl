version 1.0

task Ps2pdf14 {
  command <<<
    ps2pdf14
  >>>
  output {
    File out_stdout = stdout()
  }
}