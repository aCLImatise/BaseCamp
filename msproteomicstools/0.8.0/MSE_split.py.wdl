version 1.0

task MSESplitpy {
  command <<<
    MSE_split_py
  >>>
  output {
    File out_stdout = stdout()
  }
}