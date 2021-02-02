version 1.0

task MakeMateFrgpl {
  command <<<
    make_mate_frg_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}