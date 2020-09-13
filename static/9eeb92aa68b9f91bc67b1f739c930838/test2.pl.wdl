version 1.0

task Test2pl {
  command <<<
    test2_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}