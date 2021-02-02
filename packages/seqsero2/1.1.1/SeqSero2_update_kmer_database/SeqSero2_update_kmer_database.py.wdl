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
  parameter_meta {
    just: ""
    type: ""
  }
  output {
    File out_stdout = stdout()
  }
}