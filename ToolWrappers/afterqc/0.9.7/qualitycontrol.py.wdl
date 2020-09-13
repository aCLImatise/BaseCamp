version 1.0

task Qualitycontrolpy {
  command <<<
    qualitycontrol_py
  >>>
  output {
    File out_stdout = stdout()
  }
}