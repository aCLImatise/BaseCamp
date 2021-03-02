version 1.0

task Mdb02ConvertHeaderspy {
  input {
    Int? db
    String? blast_db
    String in_file
    String outfile
  }
  command <<<
    mdb02_convert_headers_py \
      ~{in_file} \
      ~{outfile} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(blast_db) then ("-blastdb " +  '"' + blast_db + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    db: "SQLite3 database"
    blast_db: "Name of BLAST database to be created later in pipeline"
    in_file: "Fasta file"
    outfile: "Name of output"
  }
  output {
    File out_stdout = stdout()
  }
}