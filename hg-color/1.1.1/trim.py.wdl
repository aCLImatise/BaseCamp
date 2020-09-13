version 1.0

task Trimpy {
  command <<<
    trim_py
  >>>
  output {
    File out_stdout = stdout()
  }
}