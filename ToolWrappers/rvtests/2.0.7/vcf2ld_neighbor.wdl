version 1.0

task Vcf2ldNeighbor {
  command <<<
    vcf2ld_neighbor
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}