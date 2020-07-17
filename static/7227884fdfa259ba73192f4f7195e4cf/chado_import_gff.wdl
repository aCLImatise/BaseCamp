version 1.0

task ChadoImportGff {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    String? input_file
    String? abbreviation
    String? fast_a
    String? sequence_type
    Boolean? fresh_load
    Boolean? force
    Boolean? full_genome
    Boolean? full_attributes
    String dbname
  }
  command <<<
    chado import gff \
      ~{dbname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(abbreviation) then ("--abbreviation " +  '"' + abbreviation + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(sequence_type) then ("--sequence_type " +  '"' + sequence_type + '"') else ""} \
      ~{true="--fresh_load" false="" fresh_load} \
      ~{true="--force" false="" force} \
      ~{true="--full_genome" false="" full_genome} \
      ~{true="--full_attributes" false="" full_attributes}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    input_file: "GFF3 input file"
    abbreviation: "abbreviation/short name of the organism"
    fast_a: "FASTA input file with sequences"
    sequence_type: "type of the FASTA sequences, if present (default: region)"
    fresh_load: "load a genome from scratch (default: load an update to an existing genome)"
    force: "in case of a fresh load, purge all existing features of the organism"
    full_genome: "in case of an update, mark features not present in the input file as obsolete"
    full_attributes: "in case of an update, delete feature attributes not present in the input file"
    dbname: "name of the database"
  }
}