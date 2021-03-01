version 1.0

task Buildweightedmodel {
  command <<<
    build_weighted_model
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}