version 1.0

task Splitpy {
  command <<<
    split_py
  >>>
  output {
    File out_stdout = stdout()
  }
}