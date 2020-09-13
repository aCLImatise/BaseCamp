version 1.0

task DoPlotsR {
  command <<<
    doPlots_R
  >>>
  output {
    File out_stdout = stdout()
  }
}