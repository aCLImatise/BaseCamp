version 1.0

task Segwaytask {
  command <<<
    segway_task
  >>>
  runtime {
    docker: "quay.io/biocontainers/segway:3.0.3--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}