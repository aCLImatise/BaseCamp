version 1.0

task BigWigInfo {
  command <<<
    bigWigInfo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}