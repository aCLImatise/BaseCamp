version 1.0

task Scanpy {
  command <<<
    scan_py
  >>>
  output {
    File out_stdout = stdout()
  }
}