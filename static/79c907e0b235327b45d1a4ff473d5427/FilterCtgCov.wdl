version 1.0

task FilterCtgCov {
  command <<<
    FilterCtgCov
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}