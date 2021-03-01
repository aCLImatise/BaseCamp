version 1.0

task SplitMSEpy {
  command <<<
    splitMSE_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}