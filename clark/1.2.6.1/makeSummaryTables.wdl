version 1.0

task MakeSummaryTables {
  command <<<
    makeSummaryTables
  >>>
  output {
    File out_stdout = stdout()
  }
}