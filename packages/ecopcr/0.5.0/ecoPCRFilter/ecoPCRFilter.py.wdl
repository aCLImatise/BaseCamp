version 1.0

task EcoPCRFilterpy {
  command <<<
    ecoPCRFilter_py
  >>>
  output {
    File out_stdout = stdout()
  }
}