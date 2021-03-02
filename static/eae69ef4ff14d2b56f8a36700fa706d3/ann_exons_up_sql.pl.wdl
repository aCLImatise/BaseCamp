version 1.0

task AnnExonsUpSqlpl {
  command <<<
    ann_exons_up_sql_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}