version 1.0

task Sratools2 {
  command <<<
    sratools_2
  >>>
  output {
    File out_stdout = stdout()
  }
}