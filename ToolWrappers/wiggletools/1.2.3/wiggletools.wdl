version 1.0

task Wiggletools {
  command <<<
    wiggletools
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}