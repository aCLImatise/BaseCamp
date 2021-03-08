version 1.0

task PhyloseqClusteringRmd {
  command <<<
    phyloseq_clustering_Rmd
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.1--py37_0"
  }
  output {
    File out_stdout = stdout()
  }
}