version 1.0

task Segwaytask {
  command <<<
    segway_task
  >>>
  output {
    File out_stdout = stdout()
  }
}