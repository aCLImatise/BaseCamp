version 1.0

task Convertrecfilepl {
  command <<<
    convertrecfile_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}