version 1.0

task ChromRegionLengthr {
  command <<<
    chromRegionLength_r
  >>>
  output {
    File out_stdout = stdout()
  }
}