version 1.0

task Gene2proteindb3 {
  command <<<
    gene2protein_db3
  >>>
  runtime {
    docker: "quay.io/biocontainers/bumbershoot:3_0_20295_bfe5db0--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}