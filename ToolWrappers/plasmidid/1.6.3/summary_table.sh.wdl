version 1.0

task SummaryTablesh {
  command <<<
    summary_table_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}