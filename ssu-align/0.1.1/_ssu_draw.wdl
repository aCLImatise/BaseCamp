version 1.0

task Ssudraw {
  command <<<
    _ssu_draw
  >>>
  output {
    File out_stdout = stdout()
  }
}