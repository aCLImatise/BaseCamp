version 1.0

task FindRedundantBLATpl {
  command <<<
    findRedundantBLAT_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}