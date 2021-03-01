version 1.0

task Ps2pdfPs2pdfwr {
  command <<<
    ps2pdf ps2pdfwr
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}