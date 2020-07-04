version 1.0

task Fastacmd {
  input {
    Boolean? dump_entire_database
    Boolean? retrieve_sequences_pig
  }
  command <<<
    fastacmd \
      ~{true="-D" false="" dump_entire_database} \
      ~{true="-P" false="" retrieve_sequences_pig}
  >>>
  parameter_meta {
    dump_entire_database: "Dump the entire database as (default is not to dump anything): 1 FASTA 2 Gi list 3 Accession.version list"
    retrieve_sequences_pig: "Retrieve sequences with this PIG [Integer]  Optional"
  }
}