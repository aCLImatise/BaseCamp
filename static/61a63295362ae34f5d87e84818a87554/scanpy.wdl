version 1.0

task Scanpy {
  command <<<
    scanpy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}