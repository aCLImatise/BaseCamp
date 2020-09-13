version 1.0

task PivotCSVpy {
  command <<<
    pivotCSV_py
  >>>
  output {
    File out_stdout = stdout()
  }
}