version 1.0

task MzToSqlite {
  command <<<
    mz_to_sqlite
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}