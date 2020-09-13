version 1.0

task LengthFilterpy {
  command <<<
    LengthFilter_py
  >>>
  output {
    File out_stdout = stdout()
  }
}