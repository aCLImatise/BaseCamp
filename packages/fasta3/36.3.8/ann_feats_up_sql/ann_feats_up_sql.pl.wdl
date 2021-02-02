version 1.0

task AnnFeatsUpSqlpl {
  command <<<
    ann_feats_up_sql_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}