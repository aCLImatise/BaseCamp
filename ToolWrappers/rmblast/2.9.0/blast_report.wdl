version 1.0

task BlastReport {
  command <<<
    blast_report
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}