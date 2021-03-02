version 1.0

task DnaMutationMutation {
  input {
    String dna_mutation
    String blastn
    String mutation
    String organism
  }
  command <<<
    dna_mutation mutation \
      ~{dna_mutation} \
      ~{blastn} \
      ~{mutation} \
      ~{organism}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ncbi-amrfinderplus:3.9.8--h671e170_0"
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