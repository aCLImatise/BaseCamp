version 1.0

task RandomForestpy {
  command <<<
    random_forest_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}