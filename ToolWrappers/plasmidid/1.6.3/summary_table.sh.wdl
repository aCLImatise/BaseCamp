version 1.0

task SummaryTablesh {
  command <<<
    summary_table_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}