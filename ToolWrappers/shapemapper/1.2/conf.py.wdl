version 1.0

task Confpy {
  command <<<
    conf_py
  >>>
  output {
    File out_stdout = stdout()
  }
}