version 1.0

task Alifoldpl {
  command <<<
    alifold_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}