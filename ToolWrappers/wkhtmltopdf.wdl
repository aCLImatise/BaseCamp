version 1.0

task Wkhtmltopdf {
  command <<<
    wkhtmltopdf
  >>>
  output {
    File out_stdout = stdout()
  }
}