version 1.0

task Bamstreamingmarkduplicates {
  command <<<
    bamstreamingmarkduplicates
  >>>
  output {
    File out_stdout = stdout()
  }
}