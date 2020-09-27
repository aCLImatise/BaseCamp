version 1.0

task NormalizeGAMR {
  command <<<
    normalizeGAM_R
  >>>
  output {
    File out_stdout = stdout()
  }
}