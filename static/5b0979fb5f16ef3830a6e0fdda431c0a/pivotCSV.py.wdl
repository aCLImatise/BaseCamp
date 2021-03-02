version 1.0

task PivotCSVpy {
  command <<<
    pivotCSV_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}