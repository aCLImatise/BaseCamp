version 1.0

task PhyloseqBetaDiversityRmd {
  command <<<
    phyloseq_beta_diversity_Rmd
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.0--py37_0"
  }
  output {
    File out_stdout = stdout()
  }
}