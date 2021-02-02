version 1.0

task AddColumnplbak {
  command <<<
    add_column_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}