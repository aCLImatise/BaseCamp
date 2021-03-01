version 1.0

task CalEcoliDetPerfpy {
  command <<<
    cal_EcoliDetPerf_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}