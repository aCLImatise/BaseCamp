version 1.0

task ParseDbpy {
  command <<<
    ParseDb_py
  >>>
  output {
    File out_stdout = stdout()
  }
}