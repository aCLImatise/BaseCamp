version 1.0

task Interhostpy {
  command <<<
    interhost_py
  >>>
  output {
    File out_stdout = stdout()
  }
}