version 1.0

task MasurcaConfpm {
  command <<<
    MasurcaConf_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}