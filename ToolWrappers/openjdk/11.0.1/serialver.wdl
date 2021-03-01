version 1.0

task Serialver {
  command <<<
    serialver
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}