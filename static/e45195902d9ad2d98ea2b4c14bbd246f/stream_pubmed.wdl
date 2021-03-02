version 1.0

task Streampubmed {
  command <<<
    stream_pubmed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}