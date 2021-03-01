version 1.0

task Convertfilestopdf {
  command <<<
    convertfilestopdf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}