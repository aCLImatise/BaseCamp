version 1.0

task Xcorrhelperr {
  command <<<
    xcorrhelper_r
  >>>
  output {
    File out_stdout = stdout()
  }
}