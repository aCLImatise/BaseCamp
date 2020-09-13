version 1.0

task AnnExonsUpSqlpl {
  command <<<
    ann_exons_up_sql_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}