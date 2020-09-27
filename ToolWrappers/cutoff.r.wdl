version 1.0

task Cutoffr {
  command <<<
    cutoff_r
  >>>
  output {
    File out_stdout = stdout()
  }
}