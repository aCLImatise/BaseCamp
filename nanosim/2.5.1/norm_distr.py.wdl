version 1.0

task NormDistrpy {
  command <<<
    norm_distr_py
  >>>
  output {
    File out_stdout = stdout()
  }
}