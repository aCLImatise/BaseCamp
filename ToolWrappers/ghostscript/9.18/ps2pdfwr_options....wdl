version 1.0

task Ps2pdfwrOptions {
  command <<<
    ps2pdfwr options___
  >>>
  output {
    File out_stdout = stdout()
  }
}