version 1.0

task MakeSummaryTables {
  command <<<
    makeSummaryTables
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}