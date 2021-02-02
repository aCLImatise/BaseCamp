version 1.0

task Ps2pdf {
  command <<<
    ps2pdf
  >>>
  output {
    File out_stdout = stdout()
  }
}