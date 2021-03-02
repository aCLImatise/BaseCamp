version 1.0

task ThetaStat {
  command <<<
    thetaStat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}