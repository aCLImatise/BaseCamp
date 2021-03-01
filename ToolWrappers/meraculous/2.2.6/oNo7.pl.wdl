version 1.0

task ONo7pl {
  command <<<
    oNo7_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}