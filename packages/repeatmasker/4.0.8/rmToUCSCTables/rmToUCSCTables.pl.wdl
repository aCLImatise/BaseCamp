version 1.0

task RmToUCSCTablespl {
  command <<<
    rmToUCSCTables_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}