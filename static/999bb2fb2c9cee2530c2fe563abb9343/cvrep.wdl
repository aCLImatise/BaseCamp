version 1.0

task Cvrep {
  command <<<
    cvrep
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylobayes-mpi:1.8c--h78e549b_0"
  }
  output {
    File out_stdout = stdout()
  }
}