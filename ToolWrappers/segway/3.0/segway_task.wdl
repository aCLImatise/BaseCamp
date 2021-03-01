version 1.0

task Segwaytask {
  command <<<
    segway_task
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}