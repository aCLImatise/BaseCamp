version 1.0

task SeqSero2UpdateKmerDatabasepy {
  input {
    String just
    String type
  }
  command <<<
    SeqSero2_update_kmer_database_py \
      ~{just} \
      ~{type}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqsero2:1.2.1--py_0"
  }
  parameter_meta {
    just: ""
    type: ""
  }
  output {
    File out_stdout = stdout()
  }
}