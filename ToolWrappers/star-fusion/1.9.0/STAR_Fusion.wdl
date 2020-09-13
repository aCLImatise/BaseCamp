version 1.0

task STARFusion {
  command <<<
    STAR_Fusion
  >>>
  output {
    File out_stdout = stdout()
  }
}