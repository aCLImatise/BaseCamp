version 1.0

task Ssualign {
  command <<<
    _ssu_align
  >>>
  output {
    File out_stdout = stdout()
  }
}