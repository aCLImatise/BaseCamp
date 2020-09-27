version 1.0

task FilterTranspy {
  command <<<
    filter_trans_py
  >>>
  output {
    File out_stdout = stdout()
  }
}