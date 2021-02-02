version 1.0

task RefineGAMR {
  command <<<
    refineGAM_R
  >>>
  output {
    File out_stdout = stdout()
  }
}