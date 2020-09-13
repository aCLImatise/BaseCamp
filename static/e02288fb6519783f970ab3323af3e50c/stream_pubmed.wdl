version 1.0

task Streampubmed {
  command <<<
    stream_pubmed
  >>>
  output {
    File out_stdout = stdout()
  }
}