version 1.0

task DnaMutationOrganism {
  input {
    String dna_mutation
    String blastn
    String mutation
    String organism
  }
  command <<<
    dna_mutation organism \
      ~{dna_mutation} \
      ~{blastn} \
      ~{mutation} \
      ~{organism}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ncbi-amrfinderplus:3.10.5--h17dc2d4_0"
  }
  parameter_meta {
    dna_mutation: ""
    blastn: ""
    mutation: ""
    organism: ""
  }
  output {
    File out_stdout = stdout()
  }
}