version 1.0

task Lordecstat {
  command <<<
    lordec_stat
  >>>
  output {
    File out_stdout = stdout()
  }
}