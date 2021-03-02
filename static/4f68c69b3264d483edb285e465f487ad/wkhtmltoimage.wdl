version 1.0

task Wkhtmltoimage {
  command <<<
    wkhtmltoimage
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}