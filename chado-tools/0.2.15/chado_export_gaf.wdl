version 1.0

task ChadoExportGaf {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    String? output_file
    String? abbreviation
    String? database_authority
    String? annotation_level
    Boolean? include_obsolete
    String dbname
  }
  command <<<
    chado export gaf \
      ~{dbname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(abbreviation) then ("--abbreviation " +  '"' + abbreviation + '"') else ""} \
      ~{if defined(database_authority) then ("--database_authority " +  '"' + database_authority + '"') else ""} \
      ~{if defined(annotation_level) then ("--annotation_level " +  '"' + annotation_level + '"') else ""} \
      ~{true="--include_obsolete" false="" include_obsolete}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    output_file: "GAF output file"
    abbreviation: "abbreviation/short name of the organism"
    database_authority: "database from which the file is created, e.g. 'UniProtKB'"
    annotation_level: "level to which GO terms are related in the output file (default: same level as in the database)"
    include_obsolete: "export all features, including obsoletes"
    dbname: "name of the database"
  }
}