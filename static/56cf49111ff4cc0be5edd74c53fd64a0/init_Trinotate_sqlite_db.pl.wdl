version 1.0

task InitTrinotateSqliteDbpl {
  command <<<
    init_Trinotate_sqlite_db_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}