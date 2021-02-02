version 1.0

task FcOvlpStatspy {
  command <<<
    fc_ovlp_stats_py
  >>>
  output {
    File out_stdout = stdout()
  }
}