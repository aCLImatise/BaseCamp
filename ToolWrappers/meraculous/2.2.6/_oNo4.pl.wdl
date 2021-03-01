version 1.0

task ONo4pl {
  command <<<
    _oNo4_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}