version 1.0

task Utilpy {
  command <<<
    util_py
  >>>
  output {
    File out_stdout = stdout()
  }
}