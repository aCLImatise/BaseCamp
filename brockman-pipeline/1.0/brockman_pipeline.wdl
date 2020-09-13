version 1.0

task BrockmanPipeline {
  command <<<
    brockman_pipeline
  >>>
  output {
    File out_stdout = stdout()
  }
}