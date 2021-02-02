version 1.0

task ColumnRemoverpl {
  command <<<
    column_remover_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}