version 1.0

task ChadoQuery {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    Boolean? include_header
    String? delimiter
    String? output_file
    String? format
    String? input_file
    String? query
    String dbname
  }
  command <<<
    chado query \
      ~{dbname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password} \
      ~{true="--include_header" false="" include_header} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    include_header: "include header in CSV output (default: False)"
    delimiter: "Character delimiting fields in CSV output (default: tab)"
    output_file: "file into which data are exported (default: stdout)"
    format: "format of the file (default: csv)"
    input_file: "file containing an SQL query"
    query: "SQL query"
    dbname: "name of the database"
  }
}