version 1.0

task Pminvert {
  command <<<
    pm_invert
  >>>
  output {
    File out_stdout = stdout()
  }
}