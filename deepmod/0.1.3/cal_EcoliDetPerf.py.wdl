version 1.0

task CalEcoliDetPerfpy {
  command <<<
    cal_EcoliDetPerf_py
  >>>
  output {
    File out_stdout = stdout()
  }
}