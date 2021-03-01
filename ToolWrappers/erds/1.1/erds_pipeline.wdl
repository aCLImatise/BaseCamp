version 1.0

task ErdsPipeline {
  command <<<
    erds_pipeline
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}