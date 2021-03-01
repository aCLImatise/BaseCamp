version 1.0

task FilterFPpy {
  command <<<
    filter_FP_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}