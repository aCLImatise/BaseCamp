version 1.0

task Idle37 {
  command <<<
    idle3_7
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}