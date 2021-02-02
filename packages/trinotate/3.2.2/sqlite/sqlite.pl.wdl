version 1.0

task Sqlitepl {
  command <<<
    sqlite_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}