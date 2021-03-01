version 1.0

task ExtCorrpy {
  command <<<
    ext_corr_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}