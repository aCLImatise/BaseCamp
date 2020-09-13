version 1.0

task FilterFPpy {
  command <<<
    filter_FP_py
  >>>
  output {
    File out_stdout = stdout()
  }
}