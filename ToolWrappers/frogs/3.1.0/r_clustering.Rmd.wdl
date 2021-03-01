version 1.0

task RClusteringRmd {
  command <<<
    r_clustering_Rmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}