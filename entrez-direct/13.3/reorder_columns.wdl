version 1.0

task Reordercolumns {
  command <<<
    reorder_columns
  >>>
  output {
    File out_stdout = stdout()
  }
}