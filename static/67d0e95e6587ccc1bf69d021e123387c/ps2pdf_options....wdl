version 1.0

task Ps2pdfOptions {
  command <<<
    ps2pdf options___
  >>>
  output {
    File out_stdout = stdout()
  }
}