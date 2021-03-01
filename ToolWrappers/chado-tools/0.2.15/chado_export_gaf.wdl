version 1.0

task ChadoExportGaf {
  input {
    Boolean? verbose
    File? config
    Boolean? use_password
    File? output_file
    String? abbreviation
    File? database_authority
    File? annotation_level
    Boolean? include_obsolete
  }
  command <<<
    chado export gaf \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (use_password) then "--use_password" else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(abbreviation) then ("--abbreviation " +  '"' + abbreviation + '"') else ""} \
      ~{if defined(database_authority) then ("--database_authority " +  '"' + database_authority + '"') else ""} \
      ~{if defined(annotation_level) then ("--annotation_level " +  '"' + annotation_level + '"') else ""} \
      ~{if (include_obsolete) then "--include_obsolete" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    output_file: "GAF output file"
    abbreviation: "abbreviation/short name of the organism"
    database_authority: "database from which the file is created, e.g.\\n'UniProtKB'"
    annotation_level: "level to which GO terms are related in the output file\\n(default: same level as in the database)"
    include_obsolete: "export all features, including obsoletes"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_annotation_level = "${in_annotation_level}"
  }
}