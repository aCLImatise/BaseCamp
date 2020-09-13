version 1.0

task DeltaFilterWrapperpy {
  command <<<
    delta_filter_wrapper_py
  >>>
  output {
    File out_stdout = stdout()
  }
}