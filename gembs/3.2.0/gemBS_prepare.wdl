version 1.0

task GemBSPrepare {
  input {
    String? config
    String? text_metadata
    String? output_json_file
    Boolean? no_db
    String? db_file
    String? lims_c_nag_json
  }
  command <<<
    gemBS prepare \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(text_metadata) then ("--text-metadata " +  '"' + text_metadata + '"') else ""} \
      ~{if defined(output_json_file) then ("--output " +  '"' + output_json_file + '"') else ""} \
      ~{true="--no-db" false="" no_db} \
      ~{if defined(db_file) then ("--db-file " +  '"' + db_file + '"') else ""} \
      ~{if defined(lims_c_nag_json) then ("--lims-cnag-json " +  '"' + lims_c_nag_json + '"') else ""}
  >>>
  parameter_meta {
    config: "Text config file with gemBS parameters."
    text_metadata: "Sample metadata in csv file. See documentation for description of file format."
    output_json_file: "Output JSON file. See documentation for description of file format."
    no_db: "Do not use disk base database."
    db_file: "Specify location for database file."
    lims_c_nag_json: "Lims CNAG subproject JSON file."
  }
}