version 1.0

task RmToUCSCTablespl {
  command <<<
    rmToUCSCTables_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}