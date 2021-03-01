version 1.0

task GetFRCvalues {
  command <<<
    getFRCvalues
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}