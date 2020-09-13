version 1.0

task Ps2pdfwr {
  command <<<
    ps2pdfwr
  >>>
  output {
    File out_stdout = stdout()
  }
}