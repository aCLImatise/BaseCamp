version 1.0

task MSE2mzMLpy {
  command <<<
    MSE2mzML_py
  >>>
  output {
    File out_stdout = stdout()
  }
}