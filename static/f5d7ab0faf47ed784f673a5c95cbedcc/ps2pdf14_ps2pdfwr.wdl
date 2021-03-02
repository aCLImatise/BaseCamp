version 1.0

task Ps2pdf14Ps2pdfwr {
  command <<<
    ps2pdf14 ps2pdfwr
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}