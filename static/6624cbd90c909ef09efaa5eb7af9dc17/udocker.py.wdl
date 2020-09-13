version 1.0

task Udockerpy {
  command <<<
    udocker_py
  >>>
  output {
    File out_stdout = stdout()
  }
}