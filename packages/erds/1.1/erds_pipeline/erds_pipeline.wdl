version 1.0

task ErdsPipeline {
  command <<<
    erds_pipeline
  >>>
  output {
    File out_stdout = stdout()
  }
}