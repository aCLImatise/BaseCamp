version 1.0

task BlastReport {
  command <<<
    blast_report
  >>>
  output {
    File out_stdout = stdout()
  }
}