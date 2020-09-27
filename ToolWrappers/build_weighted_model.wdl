version 1.0

task Buildweightedmodel {
  command <<<
    build_weighted_model
  >>>
  output {
    File out_stdout = stdout()
  }
}