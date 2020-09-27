version 1.0

task AlgorithmSFpy {
  command <<<
    algorithm_SF_py
  >>>
  output {
    File out_stdout = stdout()
  }
}