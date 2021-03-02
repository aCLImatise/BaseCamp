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
    docker: "quay.io/biocontainers/ncbi-amrfinderplus:3.9.8--h671e170_0"
  }
  parameter_meta {
    organism: ""
  }
  output {
    File out_stdout = stdout()
  }
}