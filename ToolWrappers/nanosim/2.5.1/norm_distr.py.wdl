version 1.0

task NormDistrpy {
  command <<<
    norm_distr_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}