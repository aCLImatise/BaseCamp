version 1.0

task Bamstreamingmarkduplicates {
  command <<<
    bamstreamingmarkduplicates
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}