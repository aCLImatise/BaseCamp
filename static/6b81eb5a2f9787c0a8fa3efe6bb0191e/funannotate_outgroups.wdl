version 1.0

task FunannotateOutgroups {
  input {
    Boolean? proteome_multifasta_file
    Boolean? species
    Boolean? busco_db
    Boolean? cpus
    Boolean? database
    String arguments
  }
  command <<<
    funannotate outgroups \
      ~{arguments} \
      ~{true="--input" false="" proteome_multifasta_file} \
      ~{true="--species" false="" species} \
      ~{true="--busco_db" false="" busco_db} \
      ~{true="--cpus" false="" cpus} \
      ~{true="--database" false="" database}
  >>>
  parameter_meta {
    proteome_multifasta_file: "Proteome multi-fasta file. Required. "
    species: "Species name for adding a species. Required."
    busco_db: "BUSCO db to use. Default. dikarya"
    cpus: "Number of CPUs to use for BUSCO search."
    database: "Path to funannotate database. Default: $FUNANNOTATE_DB"
    arguments: ""
  }
}