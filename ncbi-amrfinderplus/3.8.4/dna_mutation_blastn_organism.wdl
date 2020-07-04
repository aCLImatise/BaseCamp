version 1.0

task DnaMutationBlastnOrganism {
  input {
    String dna_mutation
    String blastn
    String mutation
    String organism
  }
  command <<<
    dna_mutation blastn organism \
      ~{dna_mutation} \
      ~{blastn} \
      ~{mutation} \
      ~{organism}
  >>>
  parameter_meta {
    dna_mutation: ""
    blastn: ""
    mutation: ""
    organism: ""
  }
}