version 1.0

task PrepareAlign {
  command <<<
    prepareAlign
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}