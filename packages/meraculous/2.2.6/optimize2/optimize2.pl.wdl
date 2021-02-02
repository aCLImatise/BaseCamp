version 1.0

task Optimize2pl {
  command <<<
    optimize2_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}