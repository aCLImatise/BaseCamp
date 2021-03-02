version 1.0

task RealSFS {
  command <<<
    realSFS
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}