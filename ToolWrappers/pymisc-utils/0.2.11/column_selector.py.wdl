version 1.0

task ColumnSelectorpy {
  command <<<
    column_selector_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}