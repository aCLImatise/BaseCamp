version 1.0

task DeltaFilterWrapperpy {
  command <<<
    delta_filter_wrapper_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}