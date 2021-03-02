version 1.0

task Pdf2dsc {
  command <<<
    pdf2dsc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}