version 1.0

task Scanpy {
  command <<<
    scanpy
  >>>
  output {
    File out_stdout = stdout()
  }
}