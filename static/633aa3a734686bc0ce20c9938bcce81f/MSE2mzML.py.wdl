version 1.0

task MSE2mzMLpy {
  command <<<
    MSE2mzML_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}