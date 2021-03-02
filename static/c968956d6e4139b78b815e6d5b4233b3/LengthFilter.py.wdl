version 1.0

task LengthFilterpy {
  command <<<
    LengthFilter_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}