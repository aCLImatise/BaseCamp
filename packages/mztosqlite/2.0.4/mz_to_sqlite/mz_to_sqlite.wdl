version 1.0

task MzToSqlite {
  command <<<
    mz_to_sqlite
  >>>
  output {
    File out_stdout = stdout()
  }
}