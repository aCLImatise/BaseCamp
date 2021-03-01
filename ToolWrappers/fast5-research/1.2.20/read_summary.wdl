version 1.0

task ReadSummary {
  command <<<
    read_summary
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}