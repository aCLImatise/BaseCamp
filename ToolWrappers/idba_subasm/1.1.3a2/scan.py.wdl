version 1.0

task Scanpy {
  command <<<
    scan_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}