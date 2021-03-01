version 1.0

task Qualitycontrolpy {
  command <<<
    qualitycontrol_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}