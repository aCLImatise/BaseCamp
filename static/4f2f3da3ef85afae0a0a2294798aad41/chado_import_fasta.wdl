version 1.0

task ChadoImportFasta {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    String? input_file
    String? abbreviation
    String? sequence_type
    String dbname
  }
  command <<<
    chado import fasta \
      ~{dbname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(abbreviation) then ("--abbreviation " +  '"' + abbreviation + '"') else ""} \
      ~{if defined(sequence_type) then ("--sequence_type " +  '"' + sequence_type + '"') else ""}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    input_file: "FASTA input file"
    abbreviation: "abbreviation/short name of the organism"
    sequence_type: "type of the sequences (default: region)"
    dbname: "name of the database"
  }
}