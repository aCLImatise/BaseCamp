version 1.0

task Utilitypy {
  command <<<
    utility_py
  >>>
  output {
    File out_stdout = stdout()
  }
}