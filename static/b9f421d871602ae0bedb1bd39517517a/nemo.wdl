version 1.0

task Nemo {
  command <<<
    nemo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}