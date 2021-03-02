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
      ~{if (proteome_multifasta_file) then "--input" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (busco_db) then "--busco_db" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (database) then "--database" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/funannotate:1.8.3--pyh3252c3a_0"
  }
  parameter_meta {
    proteome_multifasta_file: "Proteome multi-fasta file. Required."
    species: "Species name for adding a species. Required."
    busco_db: "BUSCO db to use. Default. dikarya"
    cpus: "Number of CPUs to use for BUSCO search."
    database: "Path to funannotate database. Default: $FUNANNOTATE_DB"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}