version 1.0

task Ipython2 {
  command <<<
    ipython2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}