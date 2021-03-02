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
    docker: "None"
  }
  parameter_meta {
    organism: ""
  }
  output {
    File out_stdout = stdout()
  }
}