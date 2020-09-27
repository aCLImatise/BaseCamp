version 1.0

task CompareMotifpl {
  command <<<
    compare_motif_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}