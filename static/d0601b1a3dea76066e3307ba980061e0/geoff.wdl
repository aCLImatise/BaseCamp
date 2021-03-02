version 1.0

task Geoff {
  command <<<
    geoff
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}