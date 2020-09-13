version 1.0

task MulticolumnImputerpy {
  command <<<
    multicolumn_imputer_py
  >>>
  output {
    File out_stdout = stdout()
  }
}