version 1.0

task Sratools2108 {
  command <<<
    sratools_2_10_8
  >>>
  output {
    File out_stdout = stdout()
  }
}