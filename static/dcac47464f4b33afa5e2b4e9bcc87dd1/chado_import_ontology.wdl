version 1.0

task ChadoImportOntology {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    String? input_file
    String? input_url
    String? database_authority
    String? format
    String dbname
  }
  command <<<
    chado import ontology \
      ~{dbname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(input_url) then ("--input_url " +  '"' + input_url + '"') else ""} \
      ~{if defined(database_authority) then ("--database_authority " +  '"' + database_authority + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    input_file: "file containing CV terms"
    input_url: "URL to a file containing CV terms"
    database_authority: "database authority of the terms in the file, e.g. 'GO'"
    format: "format of the file (default: obo)"
    dbname: "name of the database"
  }
}