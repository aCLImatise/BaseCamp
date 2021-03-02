version 1.0

task BatchMakeblastdb {
  input {
    Boolean? csv
  }
  command <<<
    batch_makeblastdb \
      ~{if (csv) then "-csv" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    csv: "csv file of parameters, required\\ncsv must be in format: INFILE, DB\\nINFILE: Required, input fasta file\\nDB: Optional, default = accession_db.db\\n"
  }
  output {
    File out_stdout = stdout()
  }
}