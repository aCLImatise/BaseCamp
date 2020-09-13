version 1.0

task RandomForestpy {
  command <<<
    random_forest_py
  >>>
  output {
    File out_stdout = stdout()
  }
}