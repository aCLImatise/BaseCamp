version 1.0

task Wkhtmltopdf {
  command <<<
    wkhtmltopdf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}