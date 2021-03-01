version 1.0

task Bcbioprioritize {
  command <<<
    bcbio_prioritize
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}