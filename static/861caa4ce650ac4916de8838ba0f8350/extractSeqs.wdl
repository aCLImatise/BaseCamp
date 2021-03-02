version 1.0

task ExtractSeqs {
  command <<<
    extractSeqs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}