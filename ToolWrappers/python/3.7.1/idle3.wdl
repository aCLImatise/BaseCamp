version 1.0

task Idle3 {
  command <<<
    idle3
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}