version 1.0

task Ipython {
  command <<<
    ipython
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}