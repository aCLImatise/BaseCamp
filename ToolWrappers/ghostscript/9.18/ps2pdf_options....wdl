version 1.0

task Ps2pdfOptions {
  command <<<
    ps2pdf options___
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}