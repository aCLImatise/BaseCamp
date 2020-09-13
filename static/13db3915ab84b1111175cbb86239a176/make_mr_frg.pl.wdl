version 1.0

task MakeMrFrgpl {
  command <<<
    make_mr_frg_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}