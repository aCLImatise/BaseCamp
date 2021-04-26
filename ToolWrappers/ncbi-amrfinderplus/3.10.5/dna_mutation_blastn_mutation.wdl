version 1.0

task DnaMutationBlastnMutation {
  input {
    String organism
  }
  command <<<
    dna_mutation blastn mutation \
      ~{organism}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ncbi-amrfinderplus:3.10.5--h17dc2d4_0"
  }
  parameter_meta {
    organism: ""
  }
  output {
    File out_stdout = stdout()
  }
}