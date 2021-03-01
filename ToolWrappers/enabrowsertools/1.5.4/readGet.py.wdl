version 1.0

task ReadGetpy {
  command <<<
    readGet_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}