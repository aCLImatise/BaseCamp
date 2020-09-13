version 1.0

task Intrahostpy {
  command <<<
    intrahost_py
  >>>
  output {
    File out_stdout = stdout()
  }
}