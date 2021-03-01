version 1.0

task Dnamove {
  command <<<
    dnamove
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}