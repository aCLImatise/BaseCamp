version 1.0

task Mdb01Makeblastdbsh {
  input {
    Boolean? in_file
    Boolean? database
  }
  command <<<
    mdb01_makeblastdb_sh \
      ~{if (in_file) then "--infile" else ""} \
      ~{if (database) then "--database" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    in_file: "REQUIRED; fasta file to create BLAST database from"
    database: "OPTIONAL; Name of SQLite3 database, default is accession_db.db"
  }
  output {
    File out_stdout = stdout()
  }
}