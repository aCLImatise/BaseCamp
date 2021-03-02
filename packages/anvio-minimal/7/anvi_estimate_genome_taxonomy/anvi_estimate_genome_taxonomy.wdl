version 1.0

task Anviestimategenometaxonomy {
  command <<<
    anvi_estimate_genome_taxonomy
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}