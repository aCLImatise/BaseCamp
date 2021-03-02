version 1.0

task Splitimage2pdf {
  command <<<
    splitimage2pdf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}