version 1.0

task ChadoImportGaf {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    String? input_file
    String? abbreviation
    String? annotation_level
    String dbname
  }
  command <<<
    chado import gaf \
      ~{dbname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(abbreviation) then ("--abbreviation " +  '"' + abbreviation + '"') else ""} \
      ~{if defined(annotation_level) then ("--annotation_level " +  '"' + annotation_level + '"') else ""}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    input_file: "GFF3 input file"
    abbreviation: "abbreviation/short name of the organism"
    annotation_level: "level to which GO terms are related in the database (default: same level as in the input file)"
    dbname: "name of the database"
  }
}