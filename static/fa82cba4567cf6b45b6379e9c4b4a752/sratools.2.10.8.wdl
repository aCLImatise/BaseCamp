version 1.0

task Sratools2108 {
  command <<<
    sratools_2_10_8
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}