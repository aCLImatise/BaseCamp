version 1.0

task Trimpy {
  command <<<
    trim_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}