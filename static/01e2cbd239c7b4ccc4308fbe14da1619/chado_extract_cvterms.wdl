version 1.0

task ChadoExtractCvterms {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    Boolean? include_header
    String? delimiter
    String? output_file
    String? format
    String? vocabulary
    String? database
    String dbname
  }
  command <<<
    chado extract cvterms \
      ~{dbname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password} \
      ~{true="--include_header" false="" include_header} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(vocabulary) then ("--vocabulary " +  '"' + vocabulary + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    include_header: "include header in CSV output (default: False)"
    delimiter: "Character delimiting fields in CSV output (default: tab)"
    output_file: "file into which data are exported (default: stdout)"
    format: "format of the file (default: csv)"
    vocabulary: "restrict to a vocabulary, e.g. 'relationship'"
    database: "restrict to a database, e.g. 'GO'"
    dbname: "name of the database"
  }
}