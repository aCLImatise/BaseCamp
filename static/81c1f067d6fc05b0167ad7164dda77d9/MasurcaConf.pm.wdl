version 1.0

task MasurcaConfpm {
  command <<<
    MasurcaConf_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}