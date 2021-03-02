version 1.0

task DeleteDb {
  input {
    Boolean? csv
  }
  command <<<
    delete_db \
      ~{if (csv) then "-csv" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    csv: "csv file of parameters, required\\ncsv must be in format: BLAST_DB, SQLITE3_DB\\nBLAST_DB: Required, name of BLAST database to delete\\nSQLITE3_DB: Optional, SQLite3 database where data is stored, default = accession_db.db\\n"
  }
  output {
    File out_stdout = stdout()
  }
}