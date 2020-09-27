version 1.0

task FDRpy {
  command <<<
    FDR_py
  >>>
  output {
    File out_stdout = stdout()
  }
}