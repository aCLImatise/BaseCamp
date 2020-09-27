version 1.0

task RealSFS {
  command <<<
    realSFS
  >>>
  output {
    File out_stdout = stdout()
  }
}