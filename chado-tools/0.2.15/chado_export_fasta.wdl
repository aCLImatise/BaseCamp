version 1.0

task ChadoExportFasta {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    String? output_file
    String? abbreviation
    String? sequence_type
    String? release
    Boolean? include_obsolete
    String dbname
  }
  command <<<
    chado export fasta \
      ~{dbname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(abbreviation) then ("--abbreviation " +  '"' + abbreviation + '"') else ""} \
      ~{if defined(sequence_type) then ("--sequence_type " +  '"' + sequence_type + '"') else ""} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{true="--include_obsolete" false="" include_obsolete}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    output_file: "FASTA output file"
    abbreviation: "abbreviation/short name of the organism"
    sequence_type: "type of the sequences to be exported"
    release: "name of the FASTA release"
    include_obsolete: "export all features, including obsoletes"
    dbname: "name of the database"
  }
}