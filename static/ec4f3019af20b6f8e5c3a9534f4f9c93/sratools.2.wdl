version 1.0

task Sratools2 {
  command <<<
    sratools_2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}