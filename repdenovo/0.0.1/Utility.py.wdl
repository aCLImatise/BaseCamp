version 1.0

task Utilitypy {
  command <<<
    Utility_py
  >>>
  output {
    File out_stdout = stdout()
  }
}