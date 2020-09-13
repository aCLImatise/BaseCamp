version 1.0

task Ssumask {
  command <<<
    _ssu_mask
  >>>
  output {
    File out_stdout = stdout()
  }
}