version 1.0

task Makeuniformrecfilepl {
  command <<<
    makeuniformrecfile_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}