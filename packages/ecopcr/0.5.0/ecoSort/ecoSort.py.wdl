version 1.0

task EcoSortpy {
  command <<<
    ecoSort_py
  >>>
  output {
    File out_stdout = stdout()
  }
}