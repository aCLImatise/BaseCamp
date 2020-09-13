version 1.0

task MakeDbpy {
  command <<<
    MakeDb_py
  >>>
  output {
    File out_stdout = stdout()
  }
}