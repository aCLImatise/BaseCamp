version 1.0

task ColumnSelectorpy {
  command <<<
    column_selector_py
  >>>
  output {
    File out_stdout = stdout()
  }
}