version 1.0

task Cmfinderpl {
  command <<<
    cmfinder_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}