version 1.0

task InitTrinotateSqliteDbpl {
  command <<<
    init_Trinotate_sqlite_db_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}