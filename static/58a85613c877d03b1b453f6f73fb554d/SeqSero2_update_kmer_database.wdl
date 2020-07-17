version 1.0

task SeqSero2UpdateKmerDatabase.py {
  input {
    String just
    String type
  }
  command <<<
    SeqSero2_update_kmer_database.py \
      ~{just} \
      ~{type}
  >>>
  parameter_meta {
    just: ""
    type: ""
  }
}