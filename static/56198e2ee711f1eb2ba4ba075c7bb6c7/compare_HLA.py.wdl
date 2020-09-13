version 1.0

task CompareHLApy {
  command <<<
    compare_HLA_py
  >>>
  output {
    File out_stdout = stdout()
  }
}