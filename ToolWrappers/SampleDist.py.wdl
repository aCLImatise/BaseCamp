version 1.0

task SampleDistpy {
  command <<<
    SampleDist_py
  >>>
  output {
    File out_stdout = stdout()
  }
}