version 1.0

task AliasdbPipeline {
  input {
    File? csv
  }
  command <<<
    aliasdb_pipeline \
      ~{if (csv) then "-csv" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    csv: "csv file of parameters, required\\ncsv must be in format: DBLIST_FILE, DBTYPE, TITLE, OUTPUT, SQLITE3_DATABASE\\nThe following fields are optional, defualt values are shown, all other fields are required:\\nSQLITE3_DB: default = accession_db.db\\n"
  }
  output {
    File out_stdout = stdout()
    File out_csv = "${in_csv}"
  }
}