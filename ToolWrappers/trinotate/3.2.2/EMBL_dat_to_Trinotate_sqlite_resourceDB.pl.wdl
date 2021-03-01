version 1.0

task EMBLDatToTrinotateSqliteResourceDBpl {
  command <<<
    EMBL_dat_to_Trinotate_sqlite_resourceDB_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}