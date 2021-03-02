version 1.0

task OrthologyPipeline {
  input {
    Boolean? csv
  }
  command <<<
    orthology_pipeline \
      ~{if (csv) then "-csv" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    csv: "csv file of parameters, required\\ncsv must be in format: JOB_NAME, ACCESSION_LIST, FB_DATABASE, RB_DATABASE, EVALUE, HITS, COVERAGE, SQLITE3_DB, NUM_THREADS, MAX, TREE, FREQUENCY, MODEL\\nThe following fields are optional, defualt values are shown, all other fields are required:\\nSQLITE3_DB: SQLite3 database, default = accession_db.db\\nEVALUE: expect value, default = 0.1\\nNUM_THREADS: int, number of threads to use, default = 4\\nMAX: int, maximum number of sequences to retrieve in BLAST, default = 150\\nTREE: boolean (y/n), perform phylogenetic analysis, default = n\\nFREQUENCY: float, frequency of gaps allowed per residue, if TREE selected default = 0.25\\nMODEL: model to use for phylogenetic analysis, OPTIONS lg or wag for protein or gtr for nucleotide, if TREE selected default = JTT for protein and JC for nucleotide\\n"
  }
  output {
    File out_stdout = stdout()
  }
}