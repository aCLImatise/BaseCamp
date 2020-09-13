version 1.0

task SplitMSEpy {
  command <<<
    splitMSE_py
  >>>
  output {
    File out_stdout = stdout()
  }
}