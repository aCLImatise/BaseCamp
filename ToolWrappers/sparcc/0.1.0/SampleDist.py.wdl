version 1.0

task SampleDistpy {
  command <<<
    SampleDist_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}