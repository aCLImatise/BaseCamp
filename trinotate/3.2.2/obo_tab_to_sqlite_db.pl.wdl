version 1.0

task OboTabToSqliteDbpl {
  command <<<
    obo_tab_to_sqlite_db_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}