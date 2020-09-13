version 1.0

task QueryRepeatDatabasepl {
  command <<<
    queryRepeatDatabase_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}