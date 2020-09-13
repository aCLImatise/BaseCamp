version 1.0

task ONo4pl {
  command <<<
    _oNo4_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}