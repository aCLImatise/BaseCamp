version 1.0

task QueryRepeatDatabasepl {
  command <<<
    queryRepeatDatabase_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}