version 1.0

task Ps2pdf13Ps2pdfwr {
  command <<<
    ps2pdf13 ps2pdfwr
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}