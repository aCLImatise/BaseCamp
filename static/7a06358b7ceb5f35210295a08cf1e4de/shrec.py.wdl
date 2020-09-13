version 1.0

task Shrecpy {
  command <<<
    shrec_py
  >>>
  output {
    File out_stdout = stdout()
  }
}