version 1.0

task Enrichm {
  command <<<
    enrichm
  >>>
  output {
    File out_stdout = stdout()
  }
}