version 1.0

task Converttops {
  command <<<
    converttops
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}