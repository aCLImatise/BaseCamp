version 1.0

task Sviol2 {
  command <<<
    sviol2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}