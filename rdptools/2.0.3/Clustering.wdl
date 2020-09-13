version 1.0

task Clustering {
  command <<<
    Clustering
  >>>
  output {
    File out_stdout = stdout()
  }
}