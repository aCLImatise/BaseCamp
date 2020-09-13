version 1.0

task ReadSummary {
  command <<<
    read_summary
  >>>
  output {
    File out_stdout = stdout()
  }
}