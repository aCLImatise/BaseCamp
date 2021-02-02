version 1.0

task TrimByKunitigspl {
  command <<<
    trim_by_kunitigs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}