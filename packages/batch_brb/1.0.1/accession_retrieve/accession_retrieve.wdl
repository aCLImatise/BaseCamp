version 1.0

task AccessionRetrieve {
  input {
    Boolean? csv
  }
  command <<<
    accession_retrieve \
      ~{if (csv) then "-csv" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    csv: "csv file of parameters, required\\ncsv must be in format: FASTA_FILE, JOB_NAME, BLAST_DATABASE_NAME, SQLITE3_DATABASE, EVALUE, MAX, NUM_THREADS\\nThe following fields are optional, defualt values are shown, all other fields are required:\\nSQLITE3_DB: SQLite3 database, default = accession_db.db\\nEVALUE: Expect value for BLAST, default = 0.1\\nMAX: int, maximum numnber of sequences to retrieve in BLAST, default = 5\\nNUM_THREADS: int, number of threads to use, default = 4\\n"
  }
  output {
    File out_stdout = stdout()
  }
}