version 1.0

task BreakContigspl {
  command <<<
    break_contigs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}