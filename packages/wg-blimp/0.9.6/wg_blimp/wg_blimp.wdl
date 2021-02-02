version 1.0

task Wgblimp {
  command <<<
    wg_blimp
  >>>
  output {
    File out_stdout = stdout()
  }
}