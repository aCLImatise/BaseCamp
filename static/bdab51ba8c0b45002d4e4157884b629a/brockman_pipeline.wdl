version 1.0

task BrockmanPipeline {
  command <<<
    brockman_pipeline
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}